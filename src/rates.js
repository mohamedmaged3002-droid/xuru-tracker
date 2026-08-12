// Per-night rate recovery from Xuru's stay-quote endpoint.
//
// The quote is a PURE SUM of its nights (verified 2026-08-13: Dec28-Jan01 singles
// 531+519+537+565+520 = 2672, exactly the 5-night total). Two consequences:
//
//   1. A month total is a 30-night CHANGE DETECTOR. If it matches what we stored
//      last run, no night in that month moved and we skip 30 requests. This is what
//      keeps a nightly run at ~12 requests/unit instead of ~365.
//   2. Per-night rates are recoverable exactly, so no estimation is ever needed.
//
// TRAP (verified): a BLOCKED date does not error — it silently returns the unit's
// headline base rate. Recording that would invent a price that isn't real. Every
// rate is therefore cross-checked against the availability bitmap and blocked
// nights are dropped, never priced.

import { api, pool, iso, addDays, parseQuote, blockedDates } from './lib.js';

/** Quote a range [start, end) — end is the checkout date. */
async function quote(unitId, start, end) {
  const d = await api('/unit', { id: unitId, startDate: iso(start), endDate: iso(end) });
  return parseQuote(d?.price);
}

/** Calendar months covering `days` from today, as [{key,start,end}] (end exclusive). */
export function monthWindows(from, days) {
  const out = [];
  let cur = new Date(Date.UTC(from.getUTCFullYear(), from.getUTCMonth(), from.getUTCDate()));
  const limit = addDays(from, days);
  while (cur < limit) {
    const next = new Date(Date.UTC(cur.getUTCFullYear(), cur.getUTCMonth() + 1, 1));
    const end = next < limit ? next : limit;
    out.push({ key: iso(cur).slice(0, 7), start: new Date(cur), end: new Date(end) });
    cur = next;
  }
  return out;
}

/**
 * Recover per-night USD rates for one unit.
 * @param prevTotals {Object} last run's {monthKey: total} — enables the skip.
 * @param prevRates {Object} last run's {isoDate: usd} — carried forward for skipped months.
 * @returns {{rates: Object, totals: Object, probes: number, skippedMonths: number}}
 */
export async function unitRates(unit, horizonDays, prevTotals = {}, prevRates = {}) {
  const blocked = blockedDates(unit.availabilities);
  if (blocked === null) {
    // Unknown availability -> fail closed: price nothing, let the date render BLOCKED.
    return { rates: {}, totals: {}, probes: 0, skippedMonths: 0, unknownAvailability: true };
  }

  const today = new Date(iso(new Date()) + 'T00:00:00Z');
  const months = monthWindows(today, horizonDays);
  const rates = {}, totals = {};
  let probes = 0, skippedMonths = 0;

  for (const m of months) {
    const total = await quote(unit.id, m.start, m.end);
    probes++;
    totals[m.key] = total;

    // Unchanged month -> carry last run's nightly rates forward, skip ~30 probes.
    // (Carrying forward is what makes the skip safe: omitting them would silently
    // un-price the month and render every night BLOCKED.)
    if (total !== null && prevTotals[m.key] === total) {
      skippedMonths++;
      for (let d = new Date(m.start); d < m.end; d = addDays(d, 1)) {
        const day = iso(d);
        if (!blocked.has(day) && prevRates[day] != null) rates[day] = prevRates[day];
      }
      continue;
    }

    const nights = [];
    for (let d = new Date(m.start); d < m.end; d = addDays(d, 1)) {
      const day = iso(d);
      if (!blocked.has(day)) nights.push(new Date(d));   // never price a blocked night
    }
    const got = await pool(nights, async (d) => {
      probes++;
      return [iso(d), await quote(unit.id, d, addDays(d, 1))];
    });
    for (const [day, usd] of got) if (usd !== null) rates[day] = usd;
  }
  return { rates, totals, probes, skippedMonths };
}
