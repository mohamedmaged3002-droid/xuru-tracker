// Per-NIGHT rates for every unit — the real price, not a monthly average.
//
// Xuru prices every night differently (a Gouna 1BR: 531/519/537/565/520 across five
// consecutive New Year nights), so a month average is not good enough to sell from.
// This walks the horizon night by night and stores an exact rate per date.
//
// Cost control, without losing any per-night fidelity:
//   NEAR horizon (default 120 days) is ALWAYS fully re-probed. This is where bookings
//     actually happen and where rates move, and it closes the blind spot below.
//   FAR horizon uses the month-total change detector: one request per month, and we
//     only drill into a month whose total moved since last run. Per-night values for
//     an unchanged month are carried forward, so nothing is lost or estimated.
//
//   ⚠️ The detector's blind spot: two offsetting changes in one month (+50 on one
//   night, -50 on another) leave the total identical and would be missed. That is why
//   the near horizon is never detector-driven — an unnoticed stale rate 8 months out
//   is cheap, one next week is not.
//
// Blocked nights are never priced: quoting one returns the headline rate rather than
// an error, so recording it would invent a price for a night nobody can book.

import fs from 'node:fs';
import path from 'node:path';
import { api, pool, iso, addDays, parseQuote, blockedDates, CircuitOpen } from './lib.js';
import { monthWindows } from './rates.js';

const ROOT = path.join(import.meta.dirname, '..');
const CAT = process.argv[2] || path.join(ROOT, 'data', 'units');
const DATA = path.join(ROOT, 'data');
const HORIZON = Number(process.env.HORIZON_DAYS || 365);
const NEAR = Number(process.env.NEAR_DAYS || 120);

const prev = fs.existsSync(path.join(DATA, 'night-rates.json'))
  ? JSON.parse(fs.readFileSync(path.join(DATA, 'night-rates.json'), 'utf8')) : { units: {} };

const units = fs.readdirSync(CAT).filter(f => f.endsWith('.json')).map(f => {
  const d = JSON.parse(fs.readFileSync(path.join(CAT, f), 'utf8'));
  return d.data ?? d;
}).filter(u => u?.id).sort((a, b) => (a.city + a.id).localeCompare(b.city + b.id));

// wp_post_id is assigned from the CANONICAL (city, id) order and must never move.
const WP = new Map(units.map((u, i) => [u.id, 93001 + i]));

// ...but the PROCESSING order is least-recently-swept first. With a fixed order the
// budget expired at the same place every run, so the tail was permanently starved:
// units 93159-93166 went unpriced for days while the first 156 were re-swept nightly.
// Never-swept units sort first, then oldest sweptAt.
const queue = [...units].sort((a, b) => {
  const ta = prev.units?.[WP.get(a.id)]?.sweptAt || '';
  const tb = prev.units?.[WP.get(b.id)]?.sweptAt || '';
  return ta.localeCompare(tb);
});

const today = new Date(iso(new Date()) + 'T00:00:00Z');
const nearEnd = iso(addDays(today, NEAR));
const out = { generatedAt: new Date().toISOString(), horizonDays: HORIZON, nearDays: NEAR, units: {} };
let probes = 0, skippedMonths = 0, unpriced = [], failed = [], resumed = 0;

// A cold sweep is ~60k requests over several hours. Checkpointing after every unit
// means a crash (or a laptop lid) costs one unit, and a restart resumes instead of
// paying the whole cost again.
const RESUME_WINDOW_H = Number(process.env.RESUME_WINDOW_H || 20);

// Wall-clock budget. Throttling makes the runtime unpredictable, and a job that
// overruns its GitHub timeout is KILLED — so the push and commit steps never run and
// the whole run's work is thrown away despite checkpointing. Stopping ourselves,
// cleanly and early, means the push always happens and the next run resumes.
const MAX_MINUTES = Number(process.env.MAX_MINUTES || 0);
const deadline = MAX_MINUTES ? Date.now() + MAX_MINUTES * 60_000 : Infinity;
let stoppedEarly = false;
const OUTFILE = path.join(DATA, 'night-rates.json');
function checkpoint() {
  out.probes = probes; out.skippedMonths = skippedMonths;
  out.unpricedUnits = unpriced; out.failedUnits = failed;
  fs.writeFileSync(OUTFILE, JSON.stringify(out));
}
const freshEnough = (t) =>
  t && (Date.now() - new Date(t).getTime()) < RESUME_WINDOW_H * 3600_000;

const quote1 = async (id, d) => {
  probes++;
  return parseQuote((await api('/unit', { id, startDate: iso(d), endDate: iso(addDays(d, 1)) }))?.price);
};

let processed = 0;
for (const u of queue) {
  const wp = WP.get(u.id);
  processed++;
  const blocked = blockedDates(u.availabilities);
  if (blocked === null) {
    // Availability unknown -> price nothing. Dates render BLOCKED, which is the
    // safe reading; an empty bitmap is transient and must never mean "all free".
    unpriced.push(wp);
    out.units[wp] = { xuru_id: u.id, availabilityUnknown: true,
                      rates: prev.units?.[wp]?.rates || {}, monthTotals: prev.units?.[wp]?.monthTotals || {} };
    continue;
  }

  const prevU = prev.units?.[wp] || {};

  // Already swept in this run (or a very recent one)? Carry it and move on.
  if (freshEnough(prevU.sweptAt)) {
    out.units[wp] = prevU;
    resumed++;
    continue;
  }

  // Out of budget: carry the rest forward untouched and let the push proceed.
  if (Date.now() > deadline) {
    if (!stoppedEarly) {
      console.error(`  … ${MAX_MINUTES}min budget reached — stopping cleanly so the push step still runs`);
      stoppedEarly = true;
    }
    if (Object.keys(prevU).length) out.units[wp] = prevU;
    continue;
  }

  const rates = {}, monthTotals = {};

  try {
    for (const m of monthWindows(today, HORIZON)) {
      // A month that overlaps the near window at all is treated as near (conservative).
      const isNear = m.key <= nearEnd.slice(0, 7);
      const nights = [];
      for (let d = new Date(m.start); d < m.end; d = addDays(d, 1)) {
        if (!blocked.has(iso(d))) nights.push(new Date(d));
      }

      if (!isNear) {
        const total = await quoteMonth(u.id, m);
        monthTotals[m.key] = total;
        if (total !== null && prevU.monthTotals?.[m.key] === total) {
          skippedMonths++;
          for (const d of nights) {
            const day = iso(d);
            if (prevU.rates?.[day] != null) rates[day] = prevU.rates[day];
          }
          continue;
        }
      }

      const got = await pool(nights, async (d) => [iso(d), await quote1(u.id, d)]);
      for (const [day, usd] of got) if (usd !== null) rates[day] = usd;
    }
  } catch (err) {
    // A circuit trip means Xuru is refusing us — stop, but keep what we have.
    if (err instanceof CircuitOpen) {
      console.error(`ABORT after ${probes} probes: ${err.message}`);
      checkpoint();
      process.exit(1);
    }
    // Anything else (a DNS blip, a dropped socket) costs us ONE unit, not the run.
    // Losing 4 hours of probing to a transient resolver failure is not acceptable.
    console.error(`  ! ${wp} failed mid-unit (${err.message}) — keeping previous rates, continuing`);
    failed.push(wp);
    out.units[wp] = { ...prevU, xuru_id: u.id, staleFrom: prevU.sweptAt || null };
    checkpoint();
    continue;
  }

  out.units[wp] = { xuru_id: u.id, city: u.city, rates, monthTotals,
                    pricedNights: Object.keys(rates).length, blockedNights: blocked.size,
                    sweptAt: new Date().toISOString() };
  checkpoint();                       // after EVERY unit, so a crash costs one unit
  if (processed % 10 === 0) {
    console.error(`  ${processed}/${units.length} units · ${probes} probes · ${skippedMonths} months skipped`);
  }
}

async function quoteMonth(id, m) {
  probes++;
  return parseQuote((await api('/unit', { id, startDate: iso(m.start), endDate: iso(m.end) }))?.price);
}

checkpoint();
const priced = Object.values(out.units).reduce((a, u) => a + Object.keys(u.rates || {}).length, 0);
const swept = Object.values(out.units).filter((u) => u.sweptAt).length;
console.error(`DONE${stoppedEarly ? ' (budget reached — resumes next run)' : ''}: ${priced} priced nights · ` +
  `${swept}/${units.length} units swept · ${probes} probes · ${skippedMonths} months skipped · ` +
  `${resumed} resumed · ${unpriced.length} unpriced · ${failed.length} failed${failed.length ? ' (' + failed.join(',') + ')' : ''}`);
