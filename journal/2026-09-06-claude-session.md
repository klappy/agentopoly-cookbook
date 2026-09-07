# Agentopoly — DOLCHEO Journal (black box)
Session 2026-09-06 → 2026-09-07 · captain Klappy · first officer Claude · encoded via oddkit (governance: knowledge_base, klappy://canon/definitions/dolcheo-vocabulary)

Format: `[TYPE] title — body`. Types: D decision · O observation · L learning · C constraint · H handoff · O-open Pn open question.

---

## Flight log (receipts, UTC)

| Time | Action | Receipt |
|---|---|---|
| 09-06 04:47 | buy Orlando | M$160 · +50 First Property · #8→#4 of 17 |
| 09-06 05:0x | cab → Havana, buy | fare 34 · +25 Wanderer · M$160 · single-city, no set |
| 09-06 05:30 | cab → Cancún, buy | fare 30 · M$160 · **1/3 Mexico** |
| 09-06 05:4x | cab → Miami, buy airport | fare 44 · airport M$200 (unowned) |
| 09-06 05:4x | fly → Mexico City, buy city + airport | fare 61 · M$400 · airport M$200 |
| 09-06 05:5x | cab → Guadalajara, buy | fare 28 · M$240 · **Mexico complete, +150 First Conquest** |
| 09-06 06:0x | cab → Mexico City | fare 28 (airport bought here) |
| 09-06 06:1x | fly → Toronto, buy city | fare 73 · **Consular Fees −125** (5 cities × 25) · M$240 · 1/3 Canada |
| 09-06 ~14:00 | check-in | salary +700 · **Toronto airport lost to flujo** |
| 09-06 14:xx | fly → Mexico City, build L1 | fare 73 · M$400 · **+75 Tycoon** |
| 09-07 ~14:30 | status + collect_salary | +1,200 (at cap) · **rent collected while away M$1,977** · 68 players · #3 |
| 09-07 14:4x | build L2, L3 Mexico | M$400 + M$400 · Mexico City rent M$1,600 |
| 09-07 15:0x | fly → Buenos Aires | fare 114 · **Homesick → Orlando** |
| 09-07 15:1x | cab → Miami (rent 24 to prj), fly → Buenos Aires | fare 23 + 111 |
| 09-07 15:2x | buy BA city + airport | M$400 · **1/11 Argentina** · airport M$200 |
| 09-07 15:3x | Uruguay: Montevideo, Punta del Este, Salto; build L1–L3 | 160+100+100 · fares 61 · builds 3×180 · **complete, L3** |
| 09-07 15:4x | build L4 attempt | error: L3 is max |

---

## Artifacts

[D] Adopt a contiguous cluster strategy in the Americas — Mexico L3 + Mexico City hub, Miami hub, Buenos Aires city + hub, Uruguay L3 — rather than global spread. Rationale: cab-adjacent tiles catch wanderers twice, fares stay low, one visit chain pays multiple tiles. Ruled by the captain 2026-09-07. Supersedes the earlier Canada→Pacific→Korea arc.

[D] Never pay a buyout. It costs −1× list to us and pays +1× to a rival; welcome buyouts of our own assets. Ruled by the captain 2026-09-06 ("too risky").

[D] Sell dead singles (Havana, Orlando, Toronto) whenever a slot is worth more than the 50% haircut. Ruled 2026-09-07.

[L] The "idle and bank salary" hypothesis was wrong once the board reached ~60 players: one night of L3 rent at Mexico (M$1,977) outpaced 12 hours of salary (M$1,200). Rent from a built set at a gateway is the primary income; salary is the floor.

[L] Scarce before safe. Waiting for a cash buffer before buying the unowned Toronto airport lost it to flujo within hours. Unowned hubs and set-completing cities are first-come; cash refills at M$100/hour, so buffer caution costs more than it saves. Debrief: the first officer's cash-floor model was rejected by evidence three times; the captain's land-grab instinct was right each time.

[L] Slots are not a constraint worth protecting. Sell-back costs 50% of list (M$80–120 per dead single) while one L3 landing pays M$400–1,600. Hold nothing that does not earn.

[L] Build immediately after completing a set. Building is net-worth neutral, the cap (L3) is cheap (2.5× set price total), and the only downside is a temporarily lower cash buffer against M$25/city fee cards.

[L] Visa arrivals burn on your own cities and cannot be recovered. Route through owned tiles only after the visa is spent, or accept the loss knowingly.

[C] `city_info` returns at most 5 cities per country. Any country showing exactly 5 MUST be treated as unknown size. Do NOT buy into a country for a set unless its size is proven (<5 in the listing, or the "x/N" receipt from a first buy). Argentina showed 5, is 11, and is uncompletable — Buenos Aires is held as a toll-booth only.

[C] Home city cannot be changed after the first move. A new agent MUST set home to its intended megacity hub before moving.

[O] Milestones observed: First Property +50 · Wanderer +25 · First Conquest +150 (first set only; no second-set milestone — verified via The Kitten's Ireland and our Uruguay) · Tycoon +75 (first build) · Share card on X +1,000 · Follow on X +500 · Invite friend +500 on their first set. Build cap is L3.

[O] Event cards observed: Consular Fees = M$25 per city held, airports exempt (paid 125 on 5 cities) · Tourism Board Grant +200 · Homesick teleports to home city · energy ±.

[O] Economics observed: buyout always 2× list paid to owner (seller nets +1×); net worth = cash + list price + build spend; airport fees charged on rent-free visa arrivals; visa = 10 rent-free arrivals including own cities; salary accrues from world start and caps at 12 banked hours.

[O] Traffic observed: hour 2–6, ~2 flights board-wide, rent M$24 total. Hour 30, 68 players, Mexico collected 21 payments from 9 players (Latin-named bots: Neruda, Machado de Assis, Kahlo) — mostly cab arrivals inside the set, not flights. Regional wandering pays as much as corridor transit.

[O] Rival patterns: flujo = one L3 set + 4-airport US network, maxed slots. Real_Xaros = alt-bot rent farm (Spartan_Bot ring bankrupts paying M$640/hop), 7 referrals. The Kitten = dense-region speed run, cash to M$130. LVJ = 4 sets, M$11 cash, fee-card exposed. twin city = idle, fell from #1 to out of top 10.

[O-open P1] Do L3 rents suppress traffic by bankrupting visitors? Xaros's alts went bankrupt at M$640/hop. Watch `activity` for bankruptcies at Mexico City. Rent cannot be lowered without selling buildings at 50%.

[O-open P2] Why do Real_Xaros's airports show fee M$200 while ours show M$50 (Miami showed M$25 once)? Fee-scaling rule unknown — possibly level, airport count, or megacity status.

[O-open P2] True set sizes of Chile, Peru, Portugal (all showed exactly 5) and Paraguay (unprobed).

[O-open P3] Does the game end or snapshot, or is rank continuous? Rules describe a persistent world only.

[H] Handoff to Grokbot — state 2026-09-07 ~16:00 UTC: cash M$2,238; cities 12/12 (Mexico 3 @L3, Uruguay 3 @L3, Buenos Aires 1/11, Havana, Orlando, Toronto dead); airports 3/4 (Miami, Mexico City, Buenos Aires); rank #3 of 68; visa 0. Standing rulings above are binding. Next moves: check in ≤12h (`status`, `collect_salary`, `activity`); São Paulo airport with the last slot; sell the three dead singles when a proven ≤3-city set is one hop from the cluster (Bolivia is 4, proven); claim Follow-on-X quest; do not complete Argentina, do not buy out, do not leave the Americas without a captain ruling.
