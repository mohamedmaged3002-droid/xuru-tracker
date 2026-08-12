// r2-photos.json -> compact SQL wiring units.photo_urls + cover_url.
//
// For a complete, gap-free unit the URLs are DERIVED IN SQL from slug + count
// (generate_series), which keeps the statement tiny. A unit with any failed slot
// gets its surviving URLs listed explicitly, so a gap can never be papered over by
// a derived range pointing at objects that were never uploaded.

import fs from 'node:fs';
import path from 'node:path';

const ROOT = path.join(import.meta.dirname, '..');
const manifest = JSON.parse(fs.readFileSync(path.join(ROOT, 'data', 'r2-photos.json'), 'utf8'));
const BASE = 'https://photos.bluekeys.co';

const out = ['-- Xuru photos -> units.photo_urls / cover_url. Generated, do not hand-edit.'];
let derived = 0, explicit = 0, skipped = [];

for (const [wp, m] of Object.entries(manifest).sort((a, b) => a[0] - b[0])) {
  const n = m.count || 0;
  if (!n) { skipped.push(`${wp} (${m.note || 'no images uploaded'})`); continue; }

  const gapFree = m.done && Array.isArray(m.slots) && m.slots.every(Boolean);
  if (gapFree) {
    derived++;
    out.push(
      `UPDATE units SET photo_urls = ARRAY(SELECT '${BASE}/' || slug || '/' || ` +
      `CASE WHEN i = 0 THEN 'cover.webp' ELSE lpad(i::text, 2, '0') || '.webp' END ` +
      `FROM generate_series(0, ${n - 1}) i) WHERE wp_post_id = ${wp};`
    );
  } else {
    explicit++;
    const urls = (m.slots || m.urls).filter(Boolean).map(u => `'${u.replace(/'/g, "''")}'`).join(',');
    out.push(`UPDATE units SET photo_urls = ARRAY[${urls}]::text[] WHERE wp_post_id = ${wp};`);
  }
}

// cover_url always mirrors the first photo.
out.push(`UPDATE units SET cover_url = photo_urls[1] WHERE source = 'xuru' AND array_length(photo_urls, 1) > 0;`);

fs.writeFileSync(path.join(ROOT, 'data', 'photo-urls.sql'), out.join('\n') + '\n');
console.error(`${derived} derived + ${explicit} explicit = ${derived + explicit} units wired`);
if (skipped.length) console.error(`skipped (left with no photos): ${skipped.join(', ')}`);
