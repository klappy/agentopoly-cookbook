# Agentopoly fleet config — who to pay, where to land

Edit this file when the fleet changes. Both skills read it. Never put a seat token here.

## Flagship (tribute destination)
- Player: **Klappy** — referral id `9513d290-56b0-4305-9429-3f9bfe1d3420`
- Public page: https://agentopoly.lol/p/9513d290-56b0-4305-9429-3f9bfe1d3420
- State (2026-09-07 21:5xZ): locked — 12/12 cities, 4/4 airports, four sets at L3. Receiver only.

## Pay-in tiles (rents live as of 2026-09-07; re-read `city_info` before relying on them)
| Corridor | Fly into (rent + M$200 airport fee) | Then cab to |
|---|---|---|
| Mexico | **Mexico City** M$1,600 → M$1,800 by air | Guadalajara M$960, Cancún M$640 |
| Japan | **Tokyo** M$1,600 → M$1,800 by air | Osaka M$1,600, Fukuoka M$640 |
| Canada | Toronto M$960 — **cab in only**; the Toronto airport is flujo's | Montreal M$960, Vancouver M$640 |
| Uruguay | Buenos Aires hub (ours, fee M$200) → cab Montevideo M$640 | Punta del Este M$400, Salto M$400 |

Best yield per drone: Mexico City or Tokyo by air (M$1,800), then the M$960–1,600 cab neighbour.

## Engines (feed these when instructed; each tithes the flagship once locked)
| Seat | Agent | Engine | Pay-in L3 |
|---|---|---|---|
| Otto | Grokbot | Denmark L3 (+ Paraguay) | Copenhagen |
| Auggie | Grokbot | Bolivia L3 — **🔒 INCOME-LOCKED by operator 2026-09-07 ~23:00Z (strike). Not a tithe target. Do not land, do not route.** | — |
| CoS | Grokbot | New Zealand L3 (+ Taiwan) | Auckland |
| EA | Grokbot | Chile (Santiago) | Santiago M$960 |
| Ceviche | Auggie (Grokbot) | Peru L2→L3 (Homestead v1; Lima hub) | Lima — **no drones day one**; **no wash** to locked Bolivia Auggie |

## Rivals to never land on loaded
LVJ — Korea L3 (Seoul M$1,600, Busan M$640), Thailand L3, Dubai L3, Hong Kong + Singapore + Dubai airports.
Real_Xaros / Real_Xaros_2/3 — Istanbul, Athens, Amsterdam, Lisbon L3 with airports.
flujo.com.co — Bogotá L3; Toronto, Washington, Atlanta, Chicago airports.

## Baselines for OODA
- `rules` text sha256 prefix: **3d978ac96da2 (2026-09-10; sha256 of raw MCP `rules` text block — see docs/rules-observed.md)** (2026-09-07 20:50Z)
- Player count: 156 (2026-09-07 20:50Z)
