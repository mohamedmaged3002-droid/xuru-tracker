#!/usr/bin/env python3
"""Xuru's own listing copy -> units content columns, VERBATIM.

Maged's instruction (2026-08-13): "take the description from them copy paste
dont make another version." So this is a straight transcription — no LLM, no
rewriting, no house-voice pass. It deliberately does NOT go through
listing-pipeline-ollama.

The ONLY edits are two boilerplate sentences that would be factually wrong on
bluekeys.co, removed whole rather than reworded:
  1. "At Xuru Stays, we're committed to..."      (150 units) — partner brand name
  2. "...support you via Airbnb messages..."      (58 units) — a BlueKeys guest has
                                                   no Airbnb thread to message in
Both are pure boilerplate; neither carries any property information. Everything
else is byte-for-byte what Xuru publishes.

Note this is a deliberate exception to D-049 (operator prose must not enter the
copy pipeline), which exists to stop us laundering a COMPETITOR's text through a
model. Xuru is a partner and Maged wants their words as-is.
"""
import json, glob, re, os

CAT = os.environ.get('XURU_CATALOGUE',
    '/private/tmp/claude-503/-Users-MAGED-inv/12a3e218-9380-4d80-bf6e-445d7ab81773/scratchpad/xuru/units')
OUT = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'data', 'content.sql')

DROP = [
    re.compile(r'At Xuru Stays[^.!?]*[.!?]', re.I),
    re.compile(r'[^.!?\n]*support you (?:on )?via Airbnb messages[^.!?]*[.!?]', re.I),
    # Mid-sentence operator attribution: "...beach access and is managed by Xuru
    # Stays." / "... - Egypt's Top Property Management Company". Missed on the first
    # pass because a frequency count over whole sentences never surfaces a clause
    # whose surrounding sentence differs per unit — 49 rows shipped with it.
    re.compile(r'[\s,]*(?:and\s+)?is managed by Xuru Stays[^.]*', re.I),
]

# The pattern list above is a best effort and WILL miss phrasings. This is the actual
# guarantee: nothing mentioning the partner's brand or a channel our guests cannot use
# may reach the DB. Fail the build rather than ship it.
FORBIDDEN = re.compile(r'xuru|airbnb|booking\.com', re.I)

def clean(t):
    if not t: return None
    t = t.replace('\r\n', '\n').replace('\r', '\n')
    for rx in DROP:
        t = rx.sub('', t)
    t = re.sub(r'[ \t]+\n', '\n', t)
    t = re.sub(r'\n{3,}', '\n\n', t).strip()
    return t or None

def q(s):
    return 'NULL' if s is None else "'" + s.replace("'", "''") + "'"

U = []
for f in glob.glob(os.path.join(CAT, '*.json')):
    d = json.load(open(f)); d = d.get('data', d)
    if isinstance(d, dict) and d.get('id'): U.append(d)
U.sort(key=lambda u: (u['city'], u['id']))

rows, leaks = [], []
stats = {'summary_from_space': 0, 'amenities': 0, 'edited': 0}
for i, u in enumerate(U):
    wp = 93001 + i
    desc = u.get('description') or {}
    space = clean(desc.get('Space'))
    summary = clean(u.get('summary'))
    if not summary and space:
        # their own first sentence, still verbatim — not written by us
        summary = re.split(r'(?<=[.!?])\s+', space)[0].strip()
        stats['summary_from_space'] += 1

    raw = ' '.join([u.get('summary') or ''] + [v or '' for v in desc.values()])
    if re.search(r'xuru|airbnb', raw, re.I): stats['edited'] += 1

    amen = [a.get('en_title') for a in (u.get('amenities') or []) if a.get('en_title')]
    if amen: stats['amenities'] += 1

    for col, val in [('short_description', summary), ('the_property', space),
                     ('guest_access', clean(desc.get('Access'))),
                     ('neighborhood', clean(desc.get('Neighborhood'))),
                     ('getting_around', clean(desc.get('Transit'))),
                     ('other_details', clean(desc.get('Notes')))] + [('amenity', a) for a in amen]:
        m = FORBIDDEN.search(val or '')
        if m:
            leaks.append((wp, col, val[max(0, m.start() - 60):m.end() + 30].replace('\n', ' ')))

    rows.append(
        f"({wp},{q(summary)},{q(space)},{q(clean(desc.get('Access')))},"
        f"{q(clean(desc.get('Neighborhood')))},{q(clean(desc.get('Transit')))},"
        f"{q(clean(desc.get('Notes')))},"
        + ("ARRAY[" + ",".join(q(a) for a in amen) + "]::text[]" if amen else "NULL::text[]") + ")"
    )

sql = """-- Xuru listing copy, verbatim (minus 2 boilerplate sentences). Generated.
UPDATE units u SET
  short_description = v.short_description,
  the_property      = v.the_property,
  guest_access      = v.guest_access,
  neighborhood      = v.neighborhood,
  getting_around    = v.getting_around,
  other_details     = v.other_details,
  amenities         = COALESCE(v.amenities, u.amenities)
FROM (VALUES
""" + ",\n".join(rows) + """
) AS v(wp, short_description, the_property, guest_access, neighborhood,
       getting_around, other_details, amenities)
WHERE u.wp_post_id = v.wp AND u.source = 'xuru';
"""

# Hard gate: scan the CLEANED CONTENT VALUES (never the SQL scaffolding, which
# legitimately contains 'xuru' in comments and the source filter). If anything
# forbidden survived the DROP patterns, refuse to write the file at all.
if leaks:
    raise SystemExit(
        f"REFUSING TO WRITE: {len(leaks)} value(s) still contain a forbidden term.\n"
        + "\n".join(f"  wp {wp} [{col}] …{ctx}…" for wp, col, ctx in leaks[:6])
        + f"\n{'' if len(leaks) <= 6 else f'  … and {len(leaks) - 6} more' }"
        + "\nAdd a DROP pattern for the phrasing above and re-run.")

os.makedirs(os.path.dirname(OUT), exist_ok=True)
open(OUT, 'w').write(sql)

print(f"units {len(rows)} | boilerplate removed from {stats['edited']} "
      f"| summary taken from first line of Space for {stats['summary_from_space']} "
      f"| amenities for {stats['amenities']}")
print(f"wrote {OUT} ({len(sql)} bytes)")
