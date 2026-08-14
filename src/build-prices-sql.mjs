// night-rates.json -> unit_daily_prices SQL (EGP at pinned FX 50).
//
// Two rules that matter more than the insert itself:
//
// 1. A night with no row renders BLOCKED + WhatsApp CTA. That is the intended
//    design, so we never invent a rate to fill a gap.
//
// 2. ⚠️ Stale rows must be DELETED, not just left behind. When a night gets booked
//    on Xuru's side it disappears from our rate set — but its old price row would
//    survive and keep the night looking sellable, which is how you double-book.
//    So each unit's horizon is rewritten: delete every row in range that is not in
//    this run's rates, then upsert the rest.
//
// A unit whose availability was unknown this run is SKIPPED entirely (no delete,
// no insert) — we keep whatever it had rather than wiping a calendar on a hiccup.

import fs from 'node:fs';
import path from 'node:path';
import { FX } from './lib.js';

const ROOT = path.join(import.meta.dirname, '..');
const data = JSON.parse(fs.readFileSync(path.join(ROOT, 'data', 'night-rates.json'), 'utf8'));
const OUT = path.join(ROOT, 'data', 'prices.sql');
const SRC = 'xuru-tracker';

const out = [
  `-- Xuru per-night prices -> unit_daily_prices. Generated ${data.generatedAt}.`,
  `-- USD x FX ${FX} -> EGP. Horizon ${data.horizonDays}d, near window ${data.nearDays}d.`,
  'BEGIN;',
];
let units = 0, rows = 0, skipped = [];

for (const [wp, u] of Object.entries(data.units).sort((a, b) => a[0] - b[0])) {
  const rates = u.rates || {};
  const dates = Object.keys(rates).sort();

  if (u.availabilityUnknown || !dates.length) {
    skipped.push(`${wp}${u.availabilityUnknown ? ' (availability unknown)' : ' (no rates)'}`);
    continue;
  }

  const lo = dates[0], hi = dates[dates.length - 1];
  const keep = dates.map((d) => `'${d}'`).join(',');

  // Rewrite this unit's window: drop anything now unsellable or re-dated.
  out.push(
    `DELETE FROM unit_daily_prices WHERE wp_post_id = ${wp} ` +
    `AND date BETWEEN '${lo}' AND '${hi}' AND date NOT IN (${keep});`
  );

  const values = dates
    .map((d) => `(${wp},'${d}',${Math.round(rates[d] * FX)},'EGP','${SRC}',now())`)
    .join(',');
  out.push(
    `INSERT INTO unit_daily_prices (wp_post_id,date,price,currency,source,updated_at) VALUES ${values} ` +
    `ON CONFLICT (wp_post_id,date) DO UPDATE SET price=EXCLUDED.price, currency=EXCLUDED.currency, ` +
    `source=EXCLUDED.source, updated_at=now();`
  );
  units++; rows += dates.length;
}

out.push('COMMIT;');
fs.writeFileSync(OUT, out.join('\n') + '\n');

const usd = Object.values(data.units).flatMap((u) => Object.values(u.rates || {})).sort((a, b) => a - b);
console.error(`${units} units · ${rows} priced nights -> ${OUT}`);
if (usd.length) {
  console.error(`USD/night: min ${usd[0]} median ${usd[usd.length >> 1]} max ${usd[usd.length - 1]}` +
                ` → EGP ${usd[0] * FX} / ${usd[usd.length >> 1] * FX} / ${usd[usd.length - 1] * FX}`);
}
if (skipped.length) console.error(`skipped (left untouched): ${skipped.join(', ')}`);
