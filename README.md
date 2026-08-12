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

## Layout

```
src/lib.js            config, polite HTTP client, bitmap decoding
src/rates.js          per-night rate recovery + the month-total change detector
src/sweep-months.js   12-requests-per-unit month sweep -> data/month-totals.json
```

## Conventions

- `wp_post_id` block **93001–93166**, assigned by `(city, xuru_id)` sort order.
- Pinned FX **50** USD→EGP, the standing convention for USD operators (D-026/D-048).
- `service_fee_percent = 0` — partner, nightly-only, commission settled off-platform.
- Prices land in `unit_daily_prices`; a date with **no row renders BLOCKED**, which is
  the intended behaviour and must never be papered over by extrapolating rates.

## Still to wire

- Supabase writes (needs `SUPABASE_SERVICE_ROLE_KEY` as a repo secret).
- Per-unit `.ics` generation from the bitmap — VEVENTs need `DTSTAMP` +
  `LAST-MODIFIED` + a UID encoding the range, or OTAs never pick up changes (L-011).
- GitHub Actions cron (Node 22).
- **Ask Xuru for read-only BookingSync API access.** It would replace rate probing
  entirely with one rate-periods call per unit, and remove all load from their site.
