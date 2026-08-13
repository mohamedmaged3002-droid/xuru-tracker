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

const today = new Date(iso(new Date()) + 'T00:00:00Z');
const nearEnd = iso(addDays(today, NEAR));
const out = { generatedAt: new Date().toISOString(), horizonDays: HORIZON, nearDays: NEAR, units: {} };
let probes = 0, skippedMonths = 0, unpriced = [];

const quote1 = async (id, d) => {
  probes++;
  return parseQuote((await api('/unit', { id, startDate: iso(d), endDate: iso(addDays(d, 1)) }))?.price);
};

for (const [n, u] of units.entries()) {
  const wp = 93001 + n;
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
    if (err instanceof CircuitOpen) {
      console.error(`ABORT after ${probes} probes: ${err.message}`);
      process.exit(1);
    }
    throw err;
  }

  out.units[wp] = { xuru_id: u.id, city: u.city, rates, monthTotals,
                    pricedNights: Object.keys(rates).length, blockedNights: blocked.size };
  if ((n + 1) % 10 === 0) {
    console.error(`  ${n + 1}/${units.length} units · ${probes} probes · ${skippedMonths} months skipped`);
  }
}

async function quoteMonth(id, m) {
  probes++;
  return parseQuote((await api('/unit', { id, startDate: iso(m.start), endDate: iso(m.end) }))?.price);
}

out.probes = probes;
out.skippedMonths = skippedMonths;
out.unpricedUnits = unpriced;
fs.writeFileSync(path.join(DATA, 'night-rates.json'), JSON.stringify(out));
const priced = Object.values(out.units).reduce((a, u) => a + Object.keys(u.rates || {}).length, 0);
console.error(`DONE: ${priced} priced nights across ${units.length} units · ${probes} probes · ${skippedMonths} months skipped · ${unpriced.length} units unpriced`);
