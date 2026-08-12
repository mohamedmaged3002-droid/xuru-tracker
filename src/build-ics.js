// Generate docs/{wp_post_id}.ics for every Xuru unit + docs/report.json.
//
// Liveness is judged from THIS RUN's report.json (written[] / skipped[]), never from
// a cumulative index — a cumulative index keeps serving ghost feeds for units the
// operator has dropped (L-064/L-069).

import fs from 'node:fs';
import path from 'node:path';
import { buildIcs } from './ics.js';
import { blockedDates, iso } from './lib.js';

const CAT = process.argv[2] || '/private/tmp/claude-503/-Users-MAGED-inv/12a3e218-9380-4d80-bf6e-445d7ab81773/scratchpad/xuru/units';
const ROOT = path.join(import.meta.dirname, '..');
const DOCS = path.join(ROOT, 'docs');
const WP_BASE = 93001;

const units = fs.readdirSync(CAT).filter(f => f.endsWith('.json')).map(f => {
  const d = JSON.parse(fs.readFileSync(path.join(CAT, f), 'utf8'));
  return d.data ?? d;
}).filter(u => u?.id).sort((a, b) => (a.city + a.id).localeCompare(b.city + b.id));

fs.mkdirSync(DOCS, { recursive: true });
const now = new Date();
const written = [], skipped = [];

units.forEach((u, i) => {
  const wp = WP_BASE + i;
  const ics = buildIcs(u, wp, now);
  if (ics === null) {
    skipped.push({ wp, xuru_id: u.id, reason: 'availability unknown (empty bitmap) — failing closed' });
    return;
  }
  fs.writeFileSync(path.join(DOCS, `${wp}.ics`), ics);
  const blocked = blockedDates(u.availabilities);
  written.push({ wp, xuru_id: u.id, city: u.city, blocked_nights: blocked.size,
                 horizon_days: u.availabilities.map.length,
                 events: (ics.match(/BEGIN:VEVENT/g) || []).length,
                 lastWrittenAt: now.toISOString() });
});

// Fail closed on a bad run: never let a collapsed scrape wipe good feeds.
const coverage = written.length / units.length;
if (coverage < 0.9) {
  console.error(`ABORT: only ${written.length}/${units.length} feeds built (${(coverage*100).toFixed(0)}%) — refusing to publish a partial set`);
  process.exit(1);
}

fs.writeFileSync(path.join(DOCS, 'report.json'), JSON.stringify({
  generatedAt: now.toISOString(), source: 'xurustays.com /api/unit availabilities bitmap',
  units: units.length, written: written.length, skipped: skipped.length,
  horizonDays: Math.max(...written.map(w => w.horizon_days)),
  feeds: written, skippedUnits: skipped,
}, null, 1));

console.error(`wrote ${written.length} feeds, skipped ${skipped.length}`);
for (const s of skipped) console.error(`  SKIP ${s.wp} (xuru ${s.xuru_id}): ${s.reason}`);
