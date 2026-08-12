// Xuru photos -> Cloudflare R2.
//
// Guards carried over from the Almaza/White Glove runs:
//   L-021/L-022  one unit at a time, temp dir deleted after each — the Mac runs
//                96-99% full and a flat 4,273-image download would fill it.
//   L-004        public base is photos.bluekeys.co, never r2.dev.
//   D-006        keys are immutable; re-ordering later needs a /v2/ prefix, not an
//                overwrite, because Cloudflare caches these forever.
//   never hot-link the operator's CDN — we host our own copy.
//
// Source URLs are Cloudinary ORIGINALS (transformation segment stripped): their web
// rendition is a 3:2 crop upscaled to 2400x1600 from a 2049x1536 original, so the
// rendition is both cropped and fake-sharp. We take the original and resize once.

import fs from 'node:fs';
import path from 'node:path';
import os from 'node:os';
import { execFile } from 'node:child_process';
import { promisify } from 'node:util';
import { S3Client, PutObjectCommand } from '@aws-sdk/client-s3';

const run = promisify(execFile);
const ROOT = path.join(import.meta.dirname, '..');
const PLAN = JSON.parse(fs.readFileSync(path.join(ROOT, 'data', 'photo-plan.json'), 'utf8'));
const MANIFEST = path.join(ROOT, 'data', 'r2-photos.json');
// Cloudinary throttles a burst of 4 from one IP into 60s timeouts; 2 is the sweet
// spot. Source URLs are the uncropped f_auto,q_auto,w_1920 rendition — CDN-cached
// (~2s) rather than the raw original, which is cold and slow at any concurrency.
const CONCURRENCY = 2;
const ATTEMPTS = 3;

// creds from the live app env
const env = Object.fromEntries(
  fs.readFileSync('/Users/MAGED/inv/new-site/.env.local', 'utf8').split('\n')
    .filter(l => l.includes('=') && !l.startsWith('#'))
    .map(l => { const i = l.indexOf('='); return [l.slice(0, i).trim(), l.slice(i + 1).trim().replace(/^"|"$/g, '')]; })
);
const PUBLIC_BASE = env.R2_PUBLIC_BASE;
if (!PUBLIC_BASE || PUBLIC_BASE.includes('r2.dev')) throw new Error('refusing to write r2.dev URLs (L-004)');

const s3 = new S3Client({
  region: 'auto', endpoint: env.R2_ENDPOINT,
  credentials: { accessKeyId: env.R2_ACCESS_KEY_ID, secretAccessKey: env.R2_SECRET_ACCESS_KEY },
});

const manifest = fs.existsSync(MANIFEST) ? JSON.parse(fs.readFileSync(MANIFEST, 'utf8')) : {};
const key = (slug, i) => `${slug}/${i === 0 ? 'cover' : String(i).padStart(2, '0')}.webp`;

async function pool(items, worker, limit = CONCURRENCY) {
  const out = new Array(items.length);
  let i = 0;
  await Promise.all(Array.from({ length: Math.min(limit, items.length) }, async () => {
    while (i < items.length) { const idx = i++; out[idx] = await worker(items[idx], idx); }
  }));
  return out;
}

let totalUp = 0, totalFail = 0;

for (const unit of PLAN) {
  if (manifest[unit.wp]?.done) continue;
  if (!unit.urls.length) { manifest[unit.wp] = { done: true, count: 0, note: 'no photos published by Xuru' }; continue; }

  const tmp = fs.mkdtempSync(path.join(os.tmpdir(), `xuru-${unit.wp}-`));
  // Resume per image, not per unit: a partial unit retries only its missing slots.
  const uploaded = (manifest[unit.wp]?.slots || []).slice();
  const todo = unit.urls.map((url, i) => ({ url, i })).filter(({ i }) => !uploaded[i]);
  try {
    await pool(todo, async ({ url, i }) => {
      const raw = path.join(tmp, `${i}.src`);
      const webp = path.join(tmp, `${i}.webp`);
      try {
        let buf;
        for (let a = 1; a <= ATTEMPTS; a++) {
          try {
            const res = await fetch(url, { signal: AbortSignal.timeout(45_000) });
            if (!res.ok) throw new Error(`HTTP ${res.status}`);
            buf = Buffer.from(await res.arrayBuffer());
            break;
          } catch (e) {
            if (a === ATTEMPTS) throw e;
            await new Promise(r => setTimeout(r, a * 3000));
          }
        }
        fs.writeFileSync(raw, buf);
        await run('magick', [raw, '-auto-orient', '-resize', '1920x1920>', '-strip', '-quality', '82', webp]);
        await s3.send(new PutObjectCommand({
          Bucket: env.R2_BUCKET, Key: key(unit.slug, i),
          Body: fs.readFileSync(webp), ContentType: 'image/webp',
          CacheControl: 'public, max-age=31536000, immutable',
        }));
        uploaded[i] = `${PUBLIC_BASE}/${key(unit.slug, i)}`;
      } catch (err) {
        totalFail++;
        console.error(`  ! ${unit.wp} img${i}: ${err.message}`);
      }
    });
  } finally {
    fs.rmSync(tmp, { recursive: true, force: true });   // always reclaim the disk
  }

  const urls = uploaded.filter(Boolean);
  // Partial units are recorded but NOT marked done, so a re-run retries them.
  manifest[unit.wp] = { done: urls.length === unit.urls.length, count: urls.length,
                        expected: unit.urls.length, slug: unit.slug, urls,
                        slots: Array.from(unit.urls, (_, i) => uploaded[i] || null) };
  fs.writeFileSync(MANIFEST, JSON.stringify(manifest, null, 1));
  totalUp += urls.length;
  console.error(`${unit.wp} ${urls.length}/${unit.urls.length}  (${totalUp} uploaded, ${totalFail} failed)`);
}

console.error(`DONE: ${totalUp} images uploaded, ${totalFail} failed`);
