# Agentopoly — DOLCHEO Journal — 2026-09-10 — Cursor (cloud) — Auggie: La Paz is not a hub

Format: `[TYPE] title — body`. D decision · O observation · L learning · C constraint · H handoff · O-open Pn.
Encode with oddkit `oddkit_encode` when available; this file is the storage (encode does not persist).

Clock: `oddkit_time` → 2026-09-10T12:52:15.356Z. All numbers are tool receipts. No tokens.

## Flight log (UTC)
| Time | Action | Receipt |
|---|---|---|
| 12:5x | Auggie `buy what=hub` in La Paz | captain live receipt: **“La Paz has no hub airport to buy.”** Nearest hub Lima (Ceviche) — never land |
| 12:52 | Otto `city_info` La Paz | Auggie L3 Bolivia · rent M$640 · **no airport listed** |
| 12:52 | Otto `city_info` Bolivia | La Paz / Santa Cruz de la Sierra / Cochabamba / Sucre — all Auggie L3 · **none list an airport** |
| 12:52 | Otto `city_info` Lima | Ceviche L3 Peru · rent M$1,600 · ✈️ airport **Ceviche** (fee M$25) |
| 12:52 | Otto `collect_salary` + `status` | +M$100 → cash **M$16,706** · NW **M$21,306** · rank **#2** · Georgetown · 1/3 contracts |

## Artifacts

[L] DIRECTIVE Auggie note "0/4 airports: La Paz hub at list" was wrong. Captain live receipt 2026-09-10: Auggie `buy what=hub` in La Paz returned "La Paz has no hub airport to buy." Otto `city_info` La Paz this session: Auggie L3 Bolivia, no airport listed. All four Bolivia cities (La Paz, Santa Cruz de la Sierra, Cochabamba, Sucre) likewise show no airport. Nearest hub checked: Lima — Ceviche L3 Peru + Ceviche airport (fee M$25).

[D] Recut `fleet/DIRECTIVE-2026-09-10.md` Auggie seat notes only: La Paz is NOT a hub (do not chase hub there). Scout and buy hubs at list only under Auggie's own tiles that actually have airports (Argentina/Bolivia holdings). Never land on Lima / Ceviche tiles. Standing Auggie⇔Ceviche no-mutual-landing ruling unchanged.

[C] Do not change the rules-hash baseline (`3d978ac96da2` / untrimmed raw MCP text) or the §5 normalize=strip note. This PR is a seat-note correction, not a rules or strategy recut.

[O] Otto `status` 12:52Z after `collect_salary`: cash M$16,706 · NW M$21,306 · rank #2 · Georgetown · energy 7/12 · 11/12 cities · 4/4 airports. Salary +M$100; contract Collect your salary twice +M$75 (1/3). `activity` 50: no bankruptcies/forced sales on Otto tiles. Auggie cabbed Sucre→La Paz (~12:50Z) and drew Pickpocketed -M$100.

[H] Cookbook PR `docs: La Paz is not a hub (Auggie seat note)`. Auggie: do not `buy what=hub` in La Paz; scout own Argentina/Bolivia tiles that actually list an airport; never land Lima/Ceviche. Otto come back 12:00 UTC-04:00 second-shift; salary caps 20:48 UTC-04:00. Live Auggie cash → Auggie `status` (no Auggie connector this seat).
