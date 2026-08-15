// night-rates.json -> Supabase unit_daily_prices, with a change alert.
//
// Talks to PostgREST directly with fetch. Deliberately NOT via MCP or a chunked
// SQL string: a full horizon is ~57k rows and bulk loads must never stream literals
// through a model context (L-112). Values here are read from JSON and posted as
// JSON — nothing is retyped, so nothing can be mistyped.
//
// Semantics match build-prices-sql.mjs:
//   * a night with no rate gets NO row (renders BLOCKED — that is the design)
//   * stale rows inside the horizon are DELETED, because a night booked on Xuru's
//     side vanishes from our rate set and its old row would keep it sellable
//   * a unit whose availability was unknown this run is skipped entirely, so a
//     transient empty bitmap can never wipe a calendar
//
// Verification is a content hash, not a row count — a count passes even when bytes
// are wrong.

import fs from 'node:fs';
import path from 'node:path';
import crypto from 'node:crypto';
import { FX } from './lib.js';

const ROOT = path.join(import.meta.dirname, '..');
const SRC = 'xuru-tracker';
const ALERT_PCT = Number(process.env.ALERT_PCT || 40);      // median move that warrants a look
const ALERT_DROP_PCT = Number(process.env.ALERT_DROP_PCT || 50); // loss of priced nights

const URL = process.env.SUPABASE_URL;
const KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;
if (!URL || !KEY) {
  console.error('push-db: SUPABASE_URL / SUPABASE_SERVICE_ROLE_KEY not set — skipping (nothing written)');
  process.exit(0);                                   // skip, never fail the run
}

const H = {
  apikey: KEY,
  Authorization: `Bearer ${KEY}`,
  'Content-Type': 'application/json',
};

async function rest(pathname, init = {}) {
  const res = await fetch(`${URL}/rest/v1/${pathname}`, { ...init, headers: { ...H, ...(init.headers || {}) } });
  if (!res.ok) throw new Error(`PostgREST ${res.status} on ${pathname}: ${(await res.text()).slice(0, 300)}`);
  return res;
}

const median = (a) => { if (!a.length) return null; const s = [...a].sort((x, y) => x - y); return s[s.length >> 1]; };

// ---------------------------------------------------------------- load payload
const data = JSON.parse(fs.readFileSync(path.join(ROOT, 'data', 'night-rates.json'), 'utf8'));
const payload = [];      // rows to upsert
const perUnit = new Map(); // wp -> {dates:Set, prices:[]}
const skipped = [];

for (const [wp, u] of Object.entries(data.units)) {
  const rates = u.rates || {};
  const dates = Object.keys(rates).sort();
  if (u.availabilityUnknown || !dates.length) { skipped.push(Number(wp)); continue; }
  const prices = [];
  for (const d of dates) {
    const price = Math.round(rates[d] * FX);
    payload.push({ wp_post_id: Number(wp), date: d, price, currency: 'EGP', source: SRC });
    prices.push(price);
  }
  perUnit.set(Number(wp), { lo: dates[0], hi: dates[dates.length - 1], dates: new Set(dates), prices });
}

if (!payload.length) { console.error('push-db: nothing to write'); process.exit(0); }

const localHash = crypto.createHash('md5').update(
  payload.slice().sort((a, b) => a.wp_post_id - b.wp_post_id || a.date.localeCompare(b.date))
    .map((r) => `${r.wp_post_id}|${r.date}|${r.price}`).join('\n')
).digest('hex');

console.error(`push-db: ${perUnit.size} units · ${payload.length} nights · skipped ${skipped.length}`);

// ------------------------------------------------------- snapshot BEFORE writing
// Needed for the change alert: once we upsert, the old prices are gone.
const wps = [...perUnit.keys()];
const before = new Map();
for (const wp of wps) {
  const r = await rest(`unit_daily_prices?wp_post_id=eq.${wp}&select=date,price&limit=2000`);
  const rows = await r.json();
  before.set(wp, rows);
}

// ------------------------------------------------------------------ delete stale
let deleted = 0;
for (const [wp, u] of perUnit) {
  const stale = (before.get(wp) || []).filter((r) => r.date >= u.lo && r.date <= u.hi && !u.dates.has(r.date));
  if (!stale.length) continue;
  // Chunk the IN() list so the URL stays sane.
  for (let i = 0; i < stale.length; i += 100) {
    const list = stale.slice(i, i + 100).map((r) => r.date).join(',');
    await rest(`unit_daily_prices?wp_post_id=eq.${wp}&date=in.(${list})`, { method: 'DELETE' });
  }
  deleted += stale.length;
}

// ----------------------------------------------------------------------- upsert
let written = 0;
for (let i = 0; i < payload.length; i += 1000) {
  const batch = payload.slice(i, i + 1000);
  await rest('unit_daily_prices?on_conflict=wp_post_id,date', {
    method: 'POST',
    headers: { Prefer: 'resolution=merge-duplicates,return=minimal' },
    body: JSON.stringify(batch),
  });
  written += batch.length;
}

// ------------------------------------------------------------------- verify hash
const readBack = [];
for (const wp of wps) {
  const r = await rest(`unit_daily_prices?wp_post_id=eq.${wp}&select=wp_post_id,date,price&order=date&limit=2000`);
  readBack.push(...(await r.json()));
}
const dbHash = crypto.createHash('md5').update(
  readBack.sort((a, b) => a.wp_post_id - b.wp_post_id || a.date.localeCompare(b.date))
    .map((r) => `${r.wp_post_id}|${r.date}|${r.price}`).join('\n')
).digest('hex');

const ok = dbHash === localHash;
console.error(`push-db: wrote ${written}, deleted ${deleted} stale · hash ${ok ? 'MATCH' : 'MISMATCH'}`);
if (!ok) {
  console.error(`  local ${localHash}\n  db    ${dbHash}`);
  process.exit(1);                                  // loud: the data is not what we generated
}

// ------------------------------------------------------------------ change alert
// Alert-only, never block. A guardrail that refuses to apply a change freezes
// legitimate price cuts — that is why dynamic-pricing's was deleted. So: apply
// everything, then tell Maged what moved enough to be worth a human glance.
const moves = [];
for (const [wp, u] of perUnit) {
  const oldPrices = (before.get(wp) || []).filter((r) => r.date >= u.lo && r.date <= u.hi).map((r) => r.price);
  if (!oldPrices.length) continue;                  // first load for this unit — nothing to compare
  const oldMed = median(oldPrices), newMed = median(u.prices);
  const pct = oldMed ? Math.round(((newMed - oldMed) / oldMed) * 100) : 0;
  const nightsPct = Math.round(((u.prices.length - oldPrices.length) / oldPrices.length) * 100);
  if (Math.abs(pct) >= ALERT_PCT || nightsPct <= -ALERT_DROP_PCT) {
    moves.push({ wp, oldMed, newMed, pct, oldNights: oldPrices.length, newNights: u.prices.length, nightsPct });
  }
}

if (moves.length) {
  moves.sort((a, b) => Math.abs(b.pct) - Math.abs(a.pct));
  const lines = moves.map((m) =>
    `wp ${m.wp}: median ${m.oldMed} -> ${m.newMed} EGP (${m.pct > 0 ? '+' : ''}${m.pct}%)` +
    `, nights ${m.oldNights} -> ${m.newNights}${m.nightsPct <= -ALERT_DROP_PCT ? ` (${m.nightsPct}%)` : ''}`);
  const text =
    `${moves.length} Xuru unit(s) moved by ${ALERT_PCT}%+ (or lost ${ALERT_DROP_PCT}%+ of priced nights) ` +
    `in today's sweep.\n\nThe new prices ARE live — this is a heads-up, not a block.\n\n${lines.join('\n')}\n`;
  console.error(`push-db: ${moves.length} unit(s) over the alert threshold`);
  console.error(lines.slice(0, 10).join('\n'));

  const user = process.env.SMTP_USER, pass = process.env.SMTP_PASS;
  if (user && pass) {
    try {
      const { default: nodemailer } = await import('nodemailer');
      await nodemailer.createTransport({ service: 'gmail', auth: { user, pass } }).sendMail({
        from: `BlueKeys Xuru Tracker <${user}>`,
        to: process.env.NOTIFY_EMAIL || user,
        subject: `Xuru prices: ${moves.length} unit(s) moved ${ALERT_PCT}%+`,
        text,
      });
      console.error('push-db: alert emailed');
    } catch (e) {
      console.error(`push-db: alert email failed — ${String(e).slice(0, 160)}`);   // never fail the load
    }
  } else {
    console.error('push-db: SMTP not configured — alert logged only');
  }
} else {
  console.error('push-db: no unit moved beyond the alert threshold');
}
