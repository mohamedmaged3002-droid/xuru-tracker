// Month-total sweep for every Xuru unit: 12 requests/unit.
//
// A month total is exact (the quote is a pure sum of its nights), so
//   avg nightly = month_total / nights_quoted
// is a true figure, not an estimate. Feeds the OTA sheet's monthly columns and
// seeds the change-detector totals used by the nightly run.

import fs from 'node:fs';
import path from 'node:path';
import { api, iso, addDays, parseQuote, blockedDates, CircuitOpen } from './lib.js';
import { monthWindows } from './rates.js';

const CAT = process.argv[2] || '/private/tmp/claude-503/-Users-MAGED-inv/12a3e218-9380-4d80-bf6e-445d7ab81773/scratchpad/xuru/units';
const OUT = path.join(import.meta.dirname, '..', 'data');
const MONTHS_DAYS = 365;

fs.mkdirSync(OUT, { recursive: true });

const units = fs.readdirSync(CAT).filter(f => f.endsWith('.json')).map(f => {
  const d = JSON.parse(fs.readFileSync(path.join(CAT, f), 'utf8'));
  return d.data ?? d;
}).filter(u => u?.id).sort((a, b) => (a.city + a.id).localeCompare(b.city + b.id));

const today = new Date(iso(new Date()) + 'T00:00:00Z');
const months = monthWindows(today, MONTHS_DAYS);
const result = {};
let done = 0;

for (const u of units) {
  const blocked = blockedDates(u.availabilities);
  const rec = { id: u.id, city: u.city, base_usd: Number(u.price_value),
                cleaning_usd: Number(u.cleaning_fee ?? 0),
                availability: blocked === null ? 'UNKNOWN' : 'ok',
                blocked_365: blocked ? [...blocked].filter(d => d < iso(addDays(today, 365))).length : null,
                months: {} };
  for (const m of months) {
    let nights = 0;
    for (let d = new Date(m.start); d < m.end; d = addDays(d, 1)) {
      if (!blocked || !blocked.has(iso(d))) nights++;
    }
    if (nights === 0) { rec.months[m.key] = { total: null, nights: 0, avg: null, note: 'fully blocked' }; continue; }
    try {
      const d = await api('/unit', { id: u.id, startDate: iso(m.start), endDate: iso(m.end) });
      const total = parseQuote(d?.price);
      const spanNights = Math.round((m.end - m.start) / 86400000);
      rec.months[m.key] = {
        total,
        nights: spanNights,
        // The quote covers the whole span; blocked nights inside it still carry a
        // rate, so divide by the span, and report how much of it is actually sellable.
        avg: total == null ? null : Math.round(total / spanNights),
        sellable_nights: nights,
      };
    } catch (err) {
      if (err instanceof CircuitOpen) { console.error('ABORT:', err.message); process.exit(1); }
      rec.months[m.key] = { total: null, nights: 0, avg: null, note: 'error: ' + err.message };
    }
  }
  result[u.id] = rec;
  if (++done % 20 === 0) console.error(`  ...${done}/${units.length}`);
}

fs.writeFileSync(path.join(OUT, 'month-totals.json'), JSON.stringify(result, null, 1));
console.error(`wrote ${Object.keys(result).length} units -> data/month-totals.json`);
