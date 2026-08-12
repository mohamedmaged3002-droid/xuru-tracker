// Refresh the Xuru catalogue: roster per city, then full detail per unit.
//
// Roster membership is the liveness test (L-064): when an operator drops a property
// it simply stops appearing in the roster, while any previously generated .ics keeps
// serving HTTP 200 forever. Anything in data/units that is no longer in the roster is
// reported as disappeared — never silently kept.

import fs from 'node:fs';
import path from 'node:path';
import { api, pool, CITIES } from './lib.js';

const ROOT = path.join(import.meta.dirname, '..');
const DATA = path.join(ROOT, 'data');
const UNITS = path.join(DATA, 'units');
fs.mkdirSync(UNITS, { recursive: true });

const roster = [];
for (const city of CITIES) {
  const rows = await api('/rentals', { city, page: 1, perPage: 500 });
  roster.push(...rows.map(r => ({ id: r.id, city: r.city })));
  console.error(`roster ${city}: ${rows.length}`);
}
const liveIds = new Set(roster.map(r => r.id));

await pool(roster, async ({ id }) => {
  const d = await api('/unit', { id });
  fs.writeFileSync(path.join(UNITS, `${id}.json`), JSON.stringify(d));
});

const onDisk = fs.readdirSync(UNITS).filter(f => f.endsWith('.json')).map(f => Number(f.slice(0, -5)));
const disappeared = onDisk.filter(id => !liveIds.has(id));

fs.writeFileSync(path.join(DATA, 'roster.json'), JSON.stringify({
  fetchedAt: new Date().toISOString(), count: roster.length, roster, disappeared,
}, null, 1));

console.error(`catalogue: ${roster.length} units`);
if (disappeared.length) {
  console.error(`DISAPPEARED from roster (delist candidates): ${disappeared.join(', ')}`);
}
