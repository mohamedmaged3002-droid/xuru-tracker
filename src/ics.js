// Availability bitmap -> per-unit .ics, served from GitHub Pages.
//
// Unlike Brassbell/Almaza/Soul — where we had to reconstruct a calendar by probing
// a booking widget date by date — Xuru hands us a 1,096-day availability bitmap in
// the SAME response as the unit detail. One request per unit, no calendar probing,
// three years of horizon.
//
// Rules carried over from the other feed repos:
//   L-011  every VEVENT needs DTSTAMP + LAST-MODIFIED and a UID encoding the range,
//          or OTAs cache the old block forever and never see a change.
//   L-092  empty availability means "unknown", never "free" — such units get NO feed
//          and stay draft, rather than a feed that advertises them as bookable.
//   fail-closed: we only ever write a feed we could fully build.

import { iso, addDays, blockedDates } from './lib.js';

const PROD_ID = '-//BlueKeys//xuru-tracker//EN';

/** Contiguous blocked runs -> [{start, endExclusive}] */
export function blockedRanges(blocked) {
  const days = [...blocked].sort();
  const out = [];
  for (const d of days) {
    const last = out[out.length - 1];
    if (last && last.endExclusive === d) last.endExclusive = iso(addDays(new Date(d + 'T00:00:00Z'), 1));
    else out.push({ start: d, endExclusive: iso(addDays(new Date(d + 'T00:00:00Z'), 1)) });
  }
  return out;
}

const stamp = (date) => date.toISOString().replace(/[-:]/g, '').replace(/\.\d{3}/, '');
const compact = (d) => d.replace(/-/g, '');

/** Fold to 75 octets per RFC 5545. */
function fold(line) {
  if (line.length <= 75) return line;
  const parts = [line.slice(0, 75)];
  let rest = line.slice(75);
  while (rest.length > 74) { parts.push(' ' + rest.slice(0, 74)); rest = rest.slice(74); }
  if (rest) parts.push(' ' + rest);
  return parts.join('\r\n');
}

/**
 * @returns {string|null} the .ics body, or null when availability is unknown
 *                        (caller must then skip the unit — fail closed).
 */
export function buildIcs(unit, wpPostId, now = new Date()) {
  const blocked = blockedDates(unit.availabilities);
  if (blocked === null) return null;

  const dtstamp = stamp(now);
  const lines = [
    'BEGIN:VCALENDAR', 'VERSION:2.0', `PRODID:${PROD_ID}`, 'CALSCALE:GREGORIAN',
    'METHOD:PUBLISH', `X-WR-CALNAME:BlueKeys ${wpPostId} (Xuru ${unit.id})`,
    `X-WR-CALDESC:Blocked dates for ${(unit.headline || '').replace(/[\r\n]/g, ' ')}`,
  ];
  for (const r of blockedRanges(blocked)) {
    // UID encodes the range, so a changed block yields a new UID and OTAs re-read it.
    const uid = `xuru-${wpPostId}-${compact(r.start)}-${compact(r.endExclusive)}@bluekeys.co`;
    lines.push(
      'BEGIN:VEVENT', `UID:${uid}`, `DTSTAMP:${dtstamp}`, `LAST-MODIFIED:${dtstamp}`,
      `DTSTART;VALUE=DATE:${compact(r.start)}`, `DTEND;VALUE=DATE:${compact(r.endExclusive)}`,
      'SUMMARY:Blocked', 'TRANSP:OPAQUE', 'STATUS:CONFIRMED', 'END:VEVENT'
    );
  }
  lines.push('END:VCALENDAR');
  return lines.map(fold).join('\r\n') + '\r\n';
}
