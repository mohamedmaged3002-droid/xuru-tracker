# xuru-tracker

Tracks **Xuru Stays** availability and per-night rates for BlueKeys, and writes them
into Supabase (`unit_daily_prices`, `unit_blocked_dates` / `listing_ical`).

Xuru is a **partner**, and this hits their production API — politeness is not optional.
See `src/lib.js` (spacing, backoff ladder, circuit breaker).

## Where the data comes from

Xuru runs a Next.js front end over **BookingSync**. Two public endpoints carry everything:

| Endpoint | Gives us |
|---|---|
| `GET /api/rentals?city=&page=&perPage=` | roster per city (El Gouna, Cairo, Giza) |
| `GET /api/unit?id=` | full detail: description sections, images, amenities, cleaning fee, damage deposit, lat/lng, **1,096-day availability bitmap** |
| `GET /api/unit?id=&startDate=&endDate=` | **stay quote** — the only per-date rate source |

`startDate`/`endDate` must be **camelCase**. The snake_case variants are silently
ignored and you get the headline rate back instead of a quote — which looks like a
successful response, not an error.

## The two properties that make this cheap and correct

**1. A quote is the exact sum of its nights.** Verified 2026-08-13 on unit 182530:
Dec 28–Jan 1 nightly quotes 531 + 519 + 537 + 565 + 520 = 2672, precisely the
5-night total. So per-night rates are *recoverable exactly* — nothing here is estimated.

It also means a **month total is a 30-night change detector**. If this run's month
total equals last run's, no night in that month moved and we skip ~30 requests.
Measured on one unit over a 30-day window: **27 probes cold → 2 probes warm**, with
byte-identical rates. That is what keeps a nightly run at roughly 12 requests per unit
(~2,000 total) instead of ~365 per unit (~60,000).

Cleaning is **not** included in the quote; it is a separate `cleaning_fee` (USD, per stay).

**2. A blocked date does not error — it returns the unit's headline base rate.**
This is the dangerous one. Quoting a blocked night on unit 182530 returns `68.0 USD`,
its "from" price, indistinguishable from a real cheap night. Every rate must therefore
be cross-checked against the availability bitmap and blocked nights dropped, never
priced. `unitRates()` does this; do not remove it.

## Availability bitmap

`availabilities.map` is a 1,096-character string of `0`/`1` starting at
`availabilities.start_date`, where **`1` = blocked**. `changeOvers.map` carries
`X`/`I`/`C`/`O` check-in/check-out rules over the same span.

An **absent or empty** map means *we know nothing*, and is never read as "open"
(Brain L-092). `blockedDates()` returns `null` in that case and callers fail closed —
the unit is left unpriced so its dates render BLOCKED with the WhatsApp CTA, rather
than being advertised as available. Two units are in this state today
(`248135`, `267537`).

## Feeds

Served from GitHub Pages, one per BlueKeys `wp_post_id`:

```
https://mohamedmaged3002-droid.github.io/xuru-tracker/{wp_post_id}.ics
https://mohamedmaged3002-droid.github.io/xuru-tracker/report.json
```

`report.json` is the liveness record for **this run** — `feeds[]` with per-unit
`lastWrittenAt`, and `skippedUnits[]` with the reason. Judge a feed's health from
that, never from the file merely returning HTTP 200: a stale `.ics` on Pages serves
200 forever (L-064).

## Layout

```
src/lib.js            config, polite HTTP client, bitmap decoding
src/catalogue.js      roster + detail refresh; reports units that left the roster
src/ics.js            bitmap -> VEVENTs
src/build-ics.js      writes docs/{wp}.ics + report.json, aborts below 90% coverage
src/rates.js          per-night rate recovery + the month-total change detector
src/sweep-nights.js   per-night rates; near horizon always re-probed, far horizon
                      gated by the month-total change detector
src/sweep-months.js   (superseded) month totals only -> data/month-totals.json
src/push-db.mjs       prices -> Supabase over PostgREST, hash-verified + change alert
src/photos-to-r2.mjs  Cloudinary -> R2, per-image resume
src/build_ota_xlsx.py builds "Xuru OTA Listing Pack.xlsx"
```

## Schedules

| Workflow | Cadence | Why |
|---|---|---|
| `calendar-sync` | every 2h | double-booking-critical, and cheap — one request per unit |
| `rate-sweep` | daily 02:40 UTC | sweeps per-night rates, **pushes them to Supabase**, and emails on big moves |

They use **separate** concurrency groups (`xuru-calendar` / `xuru-rates`). Sharing one
meant a multi-hour rate sweep queued the calendar behind it, and a stale calendar is
the failure the feeds exist to prevent. Contention is handled in the client instead:
a 429 slows the whole run down adaptively and decays back only after 200 clean calls.

## Conventions

- `wp_post_id` block **93001–93166**, assigned by `(city, xuru_id)` sort order.
- Pinned FX **50** USD→EGP, the standing convention for USD operators (D-026/D-048).
- `service_fee_percent = 0` — partner, nightly-only, commission settled off-platform.
- Prices land in `unit_daily_prices`; a date with **no row renders BLOCKED**, which is
  the intended behaviour and must never be papered over by extrapolating rates.

## Prices -> Supabase

`src/push-db.mjs` writes `unit_daily_prices` over PostgREST (EGP at pinned FX 50):

- Bulk loads go over the REST API, never as SQL literals through a model context
  (L-112) — ~57k rows per run.
- **Stale rows are deleted**, not just upserted. A night booked on Xuru's side
  disappears from our rate set, and its old price row would keep the night sellable.
- A unit with unknown availability is skipped whole — no delete, no insert.
- Verified by **content MD5**, local vs read-back. A row count passes even when the
  bytes are wrong; the run exits non-zero on mismatch.
- No secrets set -> exits 0 without writing, so the sweep still goes green.

### Change alert
After a successful load it compares each unit's median against the pre-load snapshot
and emails when one moves **±40%** or loses **50%+** of its priced nights
(`ALERT_PCT` / `ALERT_DROP_PCT`).

It is **alert-only, never blocking**. A guardrail that refuses to apply a change
freezes legitimate price cuts and quietly serves stale rates — which is exactly why
`dynamic-pricing`'s guardrail was deleted. Prices always apply; you just get told.

Secrets required on the repo: `SUPABASE_URL`, `SUPABASE_SERVICE_ROLE_KEY`, and
optionally `SMTP_USER` / `SMTP_PASS` / `NOTIFY_EMAIL` for the alert.

## Still to wire
- **Confirm BookingSync is Xuru's channel master** before any unit is published. If
  Airbnb/Booking reservations do not write back into the availability bitmap, these
  feeds are fiction and reselling this inventory double-books.
- **Ask Xuru for read-only BookingSync API access.** It would replace rate probing
  entirely with one rate-periods call per unit, and remove all load from their site.
- Cap the published booking horizon at ~12 months: the bitmap runs 3 years but is
  entirely empty past day 365, so it asserts availability rather than knowing it.
