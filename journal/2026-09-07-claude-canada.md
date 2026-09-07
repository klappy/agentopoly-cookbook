# Agentopoly — DOLCHEO Journal — 2026-09-07 — Claude (first officer) — Klappy (flagship)

Head session with the captain, 17:24–17:55Z. Every number below is a tool receipt read in this session. Clock: `oddkit_time` → 2026-09-07T17:24:22Z at open.

## Flight log (UTC)
| Time | Action | Receipt |
|---|---|---|
| 17:25 | `status` | cash M$4,099 · NW M$8,759 · #3 of 133 · 10/12 cities · 4/4 airports · **Vanguard_708 paid M$1,360 rent in Mexico City** · +M$100 referral (Auggie first set) |
| 17:26 | `city_info` sweep | Bolivia → **Auggie L3** (registry was stale) · Paraguay → Otto · Chile → EA 5/7 · Colombia → flujo complete L3 · Ecuador → flujo 2/3 L3, Cuenca open · Peru / Venezuela / Brazil → exactly 5 shown = unproven |
| 17:28 | `leaderboard` | #1 Real_Xaros M$73,562 (rent earned M$68,901) · #2 flujo M$51,274 (M$46,368) · #3 Klappy M$8,859 (M$3,385) |
| 17:30 | `rules` | sets are **country only**, no state tier; **hub fee = M$25/50/100/200 by hubs owned (1/2/3/4)**; buyout = **2× what the owner paid**; 531 cities / 149 countries / 94 with 2+ |
| 17:40 | `buy` São Paulo | **M$400 → "You hold 1/21 of Brazil."** Trap. Cash M$3,899 |
| 17:44 | `look_around` SP | Christopher Dondici + Erasmus standing on our hub; no rent paid (arrived before the buy / visa) |
| 17:47 | `city_info` Canada | Toronto ours · Montreal for sale M$240 · Vancouver **Drew B.** single, not top-20 |
| 17:50 | `sell` Havana, Orlando | +M$80, +M$80 → M$4,059 |
| 17:51 | `travel` SP→Toronto (flight) | M$122 + **M$200 fee to flujo** |
| 17:51 | `travel` Toronto→Montreal (cab) | M$30 · `buy` Montreal **M$240 → 2/3** |
| 17:52 | `travel` Montreal→Boston (cab) | M$26 — Boston hub unowned, no fee (dodged flujo's M$200 at Toronto) |
| 17:53 | `travel` Boston→Seattle (flight) | M$80 + M$24 rent FDE + M$25 fee Drew B. |
| 17:53 | `travel` Seattle→Vancouver (cab) | M$18 + M$16 rent Drew B. |
| 17:54 | `buy` buyout=true | **Bought out Vancouver from Drew B. for M$320 → complete Canada set** |
| 17:54 | `build` ×3 Canada | M$320 / M$320 / M$320 → Toronto M$960 · Montreal M$960 · Vancouver M$640 |
| 17:55 | `status` | cash **M$1,998** · NW M$8,098 · #3 of 134 · **11/12** cities · 4/4 airports · energy 7/12 · in Vancouver |

**Net this session: −M$2,061 all-in for Canada L3 (est. was M$2,330); −M$200 sunk on the Brazil probe; 5 energy; no event cards drawn.**

## Artifacts

[D] Canada built to L3 with a one-time buyout exception (captain ruled, 17:5xZ) — "Never pay a buyout" stands as the default. The captain carved the exception for the case it was written to allow: closing a set we already hold ≥1/N of, from a single-holder with no set, at 2× a *city* price. Vancouver cost M$320 to unlock M$2,560 per full-set visit and buyout immunity on all three tiles. Recorded in `docs/strategy.md` §2.3.

[D] Dead singles sold for slots — Havana and Orlando (M$16 rent, no hub, no set) sold to the bank for M$80 each. São Paulo and Buenos Aires kept: both are M$40 singles **on our own hubs**, so each flight arrival there is M$240 (fee + rent). They go when the next set needs the slots.

[L] I broke Recipe 04 and it cost M$200 — Recipe 04 already said "exactly 5 shown → unknown, do not commit slots" *and* already listed Japan as a proven 3. I proposed the São Paulo probe anyway, priced its downside as "if N ≤ 5" instead of "M$200 if wrong," and the captain ruled on my framing. Two fixes: (1) the head reads `recipes/` before proposing a move — the answer was on main; (2) Recipe 04 now says **probe with the cheapest town, never a megacity, and let a sub-account do it** (Cusco M$100 proves Peru for M$50 of risk; Lima would cost M$200 to learn the same thing).

[L] Big countries are bait, not sets — Rulebook: sets are country-only; cap is 12 cities. USA 50, Brazil 21, Argentina 11, Chile 7 are uncompletable for anyone (Chile only by burning 7 of 12). Every city in them is a permanent single: base rent, never builds, buyout-exposed forever. The buildable board is the 94 countries with 2+ cities, realistically ≤5. Central America is single-city countries (Guatemala, Costa Rica, Dominican Republic → no set possible).

[L] The stack only pays when the city under the hub is in a built set — Owning both hub and city stacks fee + rent, but on an uncompletable country the city adds M$40 to a M$200 fee. Mexico City (hub + L3) paid M$1,360 in one landing; BA and São Paulo will never do that. Corollary: the next set should be a country with a hub city we can own — that is why Japan (Tokyo hub for sale) beats Peru.

[O] P2 answered from the rulebook — hub fee is set by how many hubs the *owner* holds: 1→M$25, 2→M$50, 3→M$100, 4→M$200. Ours went M$50→M$200 when we went 2→4 hubs. The M$54/78/176 the runner saw at flujo's Atlanta are event-card-scaled arrivals, not different flat fees. `docs/open-questions.md` and `docs/rules-observed.md` updated.

[O] Buyout is 2× what the owner *paid*, not 2× list — rulebook wording. Same number for a list purchase; higher if the owner bought it out. Verified on arrival before paying.

[O] Set sizes proven this session — Brazil **21** (buy receipt), Paraguay 2 (Otto's, listing <5), Ecuador 3, Canada 3, **Japan 3** (Tokyo hub for sale, Osaka, Fukuoka — all unowned), Panama / Guatemala / Costa Rica / Dominican Republic single-city. Chile 7 (EA's x/N). Still unknown: Peru, Venezuela.

[O] The gap to #1 is a rent-rate gap — Real_Xaros and flujo have earned 20× and 14× our lifetime rent, on 12 cities and 4 airports each, with sub-account fleets. M$4k of city buys does not close that; a fourth L3 engine on a trafficked hub does.

[C] 11/12 cities, 4/4 airports — a fourth set needs 2 city slots (São Paulo + BA) and, if it has a hub, 1 airport slot (Miami is the only hub not on something we own).

[D-proposed] Japan next — 3 cities proven, all unowned, Tokyo hub unowned. L3 rent M$3,840 per full-set visit + our own M$200 hub. Cost ≈ M$2,780 all-in (cities M$960, L3 M$1,440, hub M$200, travel ~M$180). Cash M$1,998 → sell SP + BA (+M$400) covers cities + hub + L1–L2 now, L3 on the next rent hit. **Breaks the standing "flagship stays in the Americas" ruling** — captain has the numbers, has not ruled. Seattle hub is the door: Vancouver → Seattle cab → Tokyo flight.

[H] Handoff — flagship, 2026-09-07 17:55Z. Cash M$1,998 · NW M$8,098 · #3 of 134 · in Vancouver · energy 7/12 · 11/12 cities · 4/4 airports. Sets: Mexico ✅L3 · Uruguay ✅L3 · **Canada ✅L3** (new). Singles on own hubs: Buenos Aires, São Paulo. Airports: Miami · Mexico City · Buenos Aires · São Paulo (M$200 each). Quests 2/3 (M$500 unclaimed, needs the captain). Open for the captain: the Japan ruling. Runner: nothing to do under the brief but check-ins; do not sell SP/BA without a `move` issue.
