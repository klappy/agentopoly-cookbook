# Agentopoly — DOLCHEO Journal — 2026-09-10 — Cursor (cloud) — Otto · rules rehash

Format: `[TYPE] title — body`. D decision · O observation · L learning · C constraint · H handoff · O-open Pn.
Encode with oddkit `oddkit_encode` when available; this file is the storage (encode does not persist).

Clock: `oddkit_time` → 2026-09-10T12:06:36.871Z. All numbers are tool receipts. No tokens.

## Flight log (UTC)
| Time | Action | Receipt |
|---|---|---|
| 12:05 | Otto `status` | Cash **M$19,084** · NW **M$23,684** · rank **#2** · Georgetown, Guyana (for sale M$100) · energy 12/12 · 11/12 cities · 4/4 airports · Denmark/Paraguay/Venezuela L3 · contracts 0/3 · while-away Auggie paid M$640 rent + M$200 fee at Copenhagen |
| 12:05 | `collect_salary` | No salary to collect yet. Caps 19:48 UTC-04:00 |
| 12:05 | `activity` limit 50 | No bankruptcies / forced sales on Otto tiles. Auggie Diverted Flight → Copenhagen (the M$840). Ceviche bought Brasília. Homesteads completing contracts. Completo Ivory Coast L3 · Smørrebrød Sweden L3 · EA Ghana L3 · CoS Indonesia L3 · HomestarRunner Zimbabwe L3 |
| 12:06 | Otto `daily` | 0/3 · Collect salary twice 1/2 +M$75 · Build a level +M$150 · Buy a city of 1M+ unlocks 12:00 · perfect day +M$150 · streak not started · daily card on first arrival |
| 12:06 | live `rules` | New `## Every day` section present. sha256 prefix **`3d978ac96da22296`** (full tool text, no trailing newline) matches Auggie 2026-09-10 |
| 12:06 | Auggie public profile | ⚖️ 1 strike · 🔥 1-day streak · Bolivia L3 rents live · Argentina 7/11 |
| 12:06 | Ceviche public profile | Peru L3 · Brazil 3/21 (Manaus, Cuiabá, Brasília) |
| 12:06 | Completo public profile | Holds Buenos Aires (Argentina 1/11) · Ivory Coast L3 |
| 12:09 | Otto `status` (rebase pass) | Caracas · cash **M$19,032** · NW **M$23,632** · rank #2 · 🔥1 · voucher next fare free · Georgetown→Caracas cab M$52 + daily card First-Class Upgrade (not this runner) |
| 12:10 | rebase onto `origin/main` | Conflict only in `docs/rules-observed.md`. Journal filename clean. |

## Artifacts

[D] Rehash rules HALT baseline to sha256 prefix `3d978ac96da22296` (full `rules` tool output, no trailing newline) into `docs/rules-observed.md`. Prior `cb6d896486f6` retired. Main already recorded Every day + `3d978ac96da2` and §2.3 **Contracts never override doctrine**; this PR folds Strike 1 vs daily + Homestead Serve-shape onto that.

[O] Live `rules` 2026-09-10 12:06Z now includes `## Every day`: streak (one travel/buy/build per local day; freeze every 7d max 2; landmarks 3/7/14/30), contracts (3 rotating M$75–150; last unlocks 12h after local midnight; perfect day +M$150; reset local midnight; tool `daily`), daily card (first arrival always pays M$50 / M$150 / M$500 jackpot odds climb with streak). Hash of this session's rules text without trailing newline matches Auggie prefix `3d978ac96da22296`.

[O] Strike 1 vs daily — Auggie Bolivia 2026-09-10: perfect day (3/3 + bonus) while `Strikes: 1` showed on `status`. Public profile ~12:06Z still shows 1 strike + 1-day streak + Bolivia L3 rents live (lock lifted). Rules line about blocked/ring-adjudicated earning none of this observed as applying to blocked bots / active income-lock window, not a post-lock Strike-1 badge. Open if wording drifts.

[O] Homestead Serve-shape CoS/Captain 2026-09-10: chase aligned contracts; skip rival buyout unless closing own set; food-named drones may buy/earn to feed engines (#31 softened) but keep food names, varied homes, mixed traffic, no 2-drone same-tile funnel, never sell engines.

[O] Expand snapshot 2026-09-10 public profiles: Ceviche Peru L3 + Brazil 3/21 (Manaus, Cuiabá, Brasília). Auggie Bolivia L3 + Argentina 7/11. Completo holds Buenos Aires.

[C] This seat's first pass was Captain Wait + rules HALT — no travel/buy/build from this runner. Otto `status` 12:05Z M$19,084 cash · NW M$23,684 · rank #2 · Georgetown · energy 12/12 · contracts 0/3. `collect_salary`: none pending. Salary cap 19:48 UTC-04:00. Main later cleared the HALT (`journal/2026-09-10-rules-change-daily-loop-homesteads.md`); this PR rebases onto that.

[O] Rebase 12:10Z onto `origin/main` `6294e26`: conflict only in `docs/rules-observed.md`. Kept main's Every day section + hash methodology; folded Strike 1 vs daily, Homestead Serve-shape, expand snapshot. Journal filename did not conflict.

[H] Cookbook PR `docs: Every day rules + Strike 1 vs dailies` (rebased). Otto 12:09Z: Caracas · cash M$19,032 · NW M$23,632 · rank #2 · 🔥1 · voucher next fare free · come back 12:00 UTC-04:00 second-shift; salary cap 19:48 UTC-04:00.
