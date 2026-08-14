// Shared config + a polite HTTP client for the Xuru Stays API.
// Politeness is mandatory (Brain L-048 / D-003): spacing, backoff, circuit breaker.
// Xuru is a PARTNER — this hits their production API, so it must stay gentle.

export const BASE = 'https://www.xurustays.com/api';
export const FX = 50;                 // pinned USD->EGP, standing convention for USD operators
export const WP_BASE = 93001;         // Xuru block: 93001..93166
export const CITIES = ['El Gouna', 'Cairo', 'Giza'];

export const CONCURRENCY = 3;         // deliberately low
export const MAX_RETRIES = 3;
export const BREAKER_TRIP = 12;       // consecutive failures -> abort the run

// Base pacing. `spacing` is mutable: a 429 means we are simply asking for too much,
// and retrying the ONE request harder does not fix that — the whole run has to slow
// down. Every 429 doubles the gap between all subsequent calls (up to a cap) and it
// only decays back slowly. Learned the hard way on 2026-08-14, when a local sweep and
// the CI sweep ran at once and Xuru started 429ing both.
export const SPACING_MS = Number(process.env.SPACING_MS || 400);
const MAX_SPACING_MS = 8000;
let spacing = SPACING_MS;
let okSinceThrottle = 0;

let consecutiveFailures = 0;
let lastCall = 0;

export const currentSpacing = () => spacing;

const sleep = (ms) => new Promise((r) => setTimeout(r, ms));

export class CircuitOpen extends Error {}

async function paced() {
  const wait = lastCall + spacing - Date.now();
  if (wait > 0) await sleep(wait);
  lastCall = Date.now();
}

/** A 429 slows the ENTIRE run down, not just the call that got it. */
function throttleHarder(retryAfterSec) {
  const prev = spacing;
  spacing = Math.min(MAX_SPACING_MS, Math.max(spacing * 2, (retryAfterSec || 0) * 1000));
  okSinceThrottle = 0;
  if (spacing !== prev) console.error(`  … 429 — global spacing ${prev}ms -> ${spacing}ms`);
}

/** Decay back toward normal, but slowly: 200 clean calls per halving. */
function maybeRelax() {
  if (spacing <= SPACING_MS) return;
  if (++okSinceThrottle >= 200) {
    spacing = Math.max(SPACING_MS, Math.round(spacing / 2));
    okSinceThrottle = 0;
    console.error(`  … recovered — global spacing eased to ${spacing}ms`);
  }
}

export async function api(path, params = {}) {
  const url = new URL(BASE + path);
  for (const [k, v] of Object.entries(params)) url.searchParams.set(k, v);

  for (let attempt = 0; attempt <= MAX_RETRIES; attempt++) {
    if (consecutiveFailures >= BREAKER_TRIP) {
      throw new CircuitOpen(`circuit breaker: ${consecutiveFailures} consecutive failures`);
    }
    await paced();
    try {
      const res = await fetch(url, {
        headers: { accept: 'application/json', 'user-agent': 'BlueKeys-XuruTracker/1.0 (partner sync; ops@bluekeys.co)' },
        signal: AbortSignal.timeout(30_000),
      });
      if (res.status === 429) {
        const ra = Number(res.headers.get('retry-after')) || 0;
        throttleHarder(ra);
        const err = new Error('HTTP 429');
        err.rateLimited = true;
        err.retryAfter = ra;
        throw err;
      }
      if (!res.ok) throw new Error(`HTTP ${res.status}`);
      const json = await res.json();
      consecutiveFailures = 0;
      maybeRelax();
      return json.data ?? json;
    } catch (err) {
      consecutiveFailures++;
      if (attempt === MAX_RETRIES) throw err;
      // A 429 needs a far longer wait than a dropped socket — and Retry-After,
      // when the server sends one, is authoritative.
      const ladder = err.rateLimited ? [60_000, 180_000, 300_000] : [15_000, 30_000, 60_000];
      await sleep(Math.max(ladder[attempt], (err.retryAfter || 0) * 1000));
    }
  }
}

/** Run tasks with bounded concurrency. */
export async function pool(items, worker, limit = CONCURRENCY) {
  const out = new Array(items.length);
  let i = 0;
  await Promise.all(
    Array.from({ length: Math.min(limit, items.length) }, async () => {
      while (i < items.length) {
        const idx = i++;
        out[idx] = await worker(items[idx], idx);
      }
    })
  );
  return out;
}

export const iso = (d) => d.toISOString().slice(0, 10);
export const addDays = (d, n) => new Date(d.getTime() + n * 86400000);

/** Parse "2672 USD per 5 nights" / "68.0 USD per 1 night" -> 2672 */
export function parseQuote(price) {
  if (typeof price !== 'string') return null;
  const m = price.match(/^([\d.]+)\s*USD/);
  return m ? Number(m[1]) : null;
}

/**
 * Availability bitmap -> Set of blocked ISO dates.
 * '1' = blocked, '0' = free, indexed from availabilities.start_date.
 * An ABSENT or EMPTY map means "we know nothing" and must NOT be read as open (L-092).
 */
export function blockedDates(availabilities) {
  const map = availabilities?.map;
  const start = availabilities?.start_date;
  if (!map || !start || !map.length) return null;      // null = unknown, caller fails closed
  const s = new Date(start + 'T00:00:00Z');
  const out = new Set();
  for (let i = 0; i < map.length; i++) if (map[i] === '1') out.add(iso(addDays(s, i)));
  return out;
}
