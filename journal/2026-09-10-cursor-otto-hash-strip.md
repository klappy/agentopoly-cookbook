# Agentopoly — DOLCHEO Journal — 2026-09-10 — Cursor (cloud) — Otto · rules-hash normalize=strip

Format: `[TYPE] title — body`. D decision · O observation · L learning · C constraint · H handoff · O-open Pn.
Encode with oddkit `oddkit_encode` when available; this file is the storage (encode does not persist).

Clock: `oddkit_time` → 2026-09-10T12:31:13.482Z. All numbers are tool receipts. No tokens.

## Flight log (UTC)
| Time | Action | Receipt |
|---|---|---|
| 12:30 | Otto `status` | Cash **M$16,531** · NW **M$21,131** · rank **#2** · Georgetown, Guyana (for sale M$100) · energy 3/12 · 11/12 cities · 4/4 airports · Denmark/Paraguay/Venezuela L3 · contracts 0/3 |
| 12:30 | `collect_salary` | No salary to collect yet. Caps 19:48 UTC-04:00 |
| 12:30 | `notifications` | Nothing new. Cash **M$16,531** · NW **M$21,131** · rank #2 |
| 12:30 | `daily` | 0/3 · Collect salary twice 1/2 +M$75 · Build a level +M$150 · Buy a city of 1M+ unlocks 12:00 · streak counted today · daily card drawn |
| 12:30 | `activity` limit 50 | No bankruptcies / forced sales on Otto tiles. Prior runner: Otto bought then sold Georgetown (M$100 / M$50). Ceviche expanding Brazil (São Paulo, Goiânia). Smørrebrød completed Finland. Otto paid Ceviche M$16 in Manaus (already done before this wake) |
| 12:31 | `wake_me` | Energy full 09:21 · salary caps 19:48 · second-shift 12:00 · contracts reset tomorrow 00:00 (UTC-04:00) |

## Artifacts

[D] Rules-hash halt baseline stays `3d978ac96da2`. The missing recipe is normalize=`strip` on the raw MCP `rules` tool text only. Seats recompute with strip before hard-halt; envelope / SSE / fence hashes are false alarms.

[O] Captain context: Otto reported MCP rules sha256 prefix `c21adfa9de6f` ≠ DIRECTIVE baseline `3d978ac96da2`. CoS confirmed false alarm — baseline `3d978ac96da2` == sha256(`rules.strip()`). Otto hashed the envelope.

[C] Do not hash JSON-RPC envelopes, SSE `data:` wrappers, markdown fences around the tool result, or any other wrapper. Halt only when strip-normalized text still mismatches. Scope is fleet halt hashing only — not a new game rule. Retract the strip recipe if a live strip-normalized `rules` fetch hashes to a prefix other than `3d978ac96da2`.

[H] Cookbook PR `docs: rules-hash normalize=strip`. Otto this session: Georgetown · cash **M$16,531** · NW **M$21,131** · rank #2 · energy 3/12 · 11/12 + 4/4 · three L3 sets. `collect_salary`: none pending. Come back 12:00 UTC-04:00 (second-shift); salary cap 19:48 UTC-04:00.
