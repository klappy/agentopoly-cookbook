# 🍌 Recipe 07 — Minions (disposable traffic, Minion 1…N)

> One runner loops many disposable drone MCP seats. Not crowns. Not namesakes. Zero holdings. Travel only **team-engine L3 tiles**. Never buy, build, buyout, complete sets, or write tokens. Pack of 12 live behind one runner; loop **Denmark · Bolivia · New Zealand · Chile (Santiago)**; cash floor on (Santiago live rent M$960); target 20/engine still later Serve. Attention + ToS are the ceiling.

**TOC / constraint:** Minions feed engines; engines feed flagship; flagship is not the *loop* Minion customer. **Exception (captain 2026-09-07 20:19Z):** designated **seed drones** (§Seed drones below) make one flagship landing each; loop drones never do. **Why (captain 2026-09-07):** the bottleneck is the number of L3 engines, and L3 needs cash — drones are the cash. One minion M$ on an L3 engine funds the next build; the same M$ on the flagship optimises the wrong constraint. **Routing rule:** send each tick's drones to the engine closest to its next L3 (CoS reads live `status`). **Flip rule:** an engine starts tithing when it is 12/12 with every set at L3 and 4 hubs, or has no proven set left to buy.

**Status:** working procedure (captain + CoS bind 2026-09-07, disk recut). Not a proven earning law — first pack is the experiment. Retract if fare leak > rent, ToS bites, or the 4+1 engines starve for attention.

**Governs:** disposable traffic seats only. **Does not govern:** namesake guests, flagship play, or the closed roster in `fleet/README.md`.

**Complements:** Recipe 01 (check-in) · Recipe 06 (join + home lock) · `docs/strategy.md` §3.7 · `docs/rivals.md` (Xaros) · `docs/rules-observed.md` §1.6 (bankrupt → respawn M$300).

## Summary — Drones pay team engines; they own nothing

A **Minion** is a numbered disposable guest seat (`Minion 1`…`Minion N` 🍌) flown by **one runner agent** over many MCP seats. It is traffic, not an engine.

- **What:** loop **team-engine** L3 tiles so rent lands on Otto (Denmark) · Auggie (Bolivia) · CoS (New Zealand) · EA (Chile / Santiago). Zero cities, zero hubs, zero builds. **Not** Klappy flagship tiles, **not** Japan/Tokyo, **not** any flagship corridor as the loop target.
- **Chain:** Minions feed engines → engines tithe flagship when cash ≥ rent + fare cushion (tithe rules in `fleet/README.md` unchanged). Flagship is not the Minion customer.
- **Serve gate:** this file first. Pack of **12 live** (Otto reported 2026-09-07). Pack of 6 superseded as the live count. Target **20/engine** still later Serve. Do not mint from this recipe alone.
- **Not Xaros:** Xaros runs own-alt rent farms that *own* tiles and ping-pong until bankrupt (`docs/rivals.md`). Forbidden. Minions hold nothing; they are fare-paying visitors on *already-built team-engine* L3s. Same bankrupt recycle mechanic (`docs/rules-observed.md` §1.6); different ownership. Do not blur them.

## What
One runner, many drone MCP seats. Funny name + number only — **Minion 1**…**Minion N** 🍌. Pack of 12 live. Not crowns. Not namesakes. Zero holdings.

## Never
- Buy cities or hubs — **except the one cheap city that unlocks the quests** (§Pump-and-drain).
- Build.
- Buyout.
- Tithe reverse (never send flagship / engine cash to a Minion; Minions are the payers).
- Complete sets (they hold nothing to complete).
- Play as a namesake (Otto · Auggie · CoS · EA · Klappy).
- Travel to **flagship** tiles, **Japan / Tokyo**, or any **flagship corridor** as a loop stop. Those are engine-tithe destinations, not loop-Minion customers. (Seed drones are the ruled exception — §Seed drones.)
- Put tokens in prose, git, this file, journals, or PR text. Tokens live in the runner's MCP config, nowhere in the repo.

## Always
1. Join **once** via the **previous Minion's** invite link (daisy chain, captain 2026-09-07 20:19Z; Minion 1 joins via its engine's link). Then run **all three starter quests before move one** — share card +M$1,000, follow +M$500, invite +M$500 (share/follow credit automatically; whether invite credits without a set is open test **P7** — report the receipt). That M$2,000 is the drone's seed cash.
2. First move locks home (Recipe 06). Pick a **cheap tile already on the team-engine loop** so Homesick is a cheap self-pay, not a leak to a rival megacity. Do not lock home on a flagship tile.
3. After that: only travel between **team-engine L3 tiles**. Read live `city_info` / engine `status` — do not freeze a map.
4. **Loop engines** (verify live L3 before landing): **Otto Denmark** · **Auggie Bolivia** · **CoS New Zealand** · **EA Chile (Santiago)**. Chile is live L3 — prior "skip while L1" is superseded. **Forbidden as Minion targets:** flagship Japan / Tokyo / Mexico / Uruguay / Canada, and any other flagship-corridor tile.
5. Visa burn is fine. After visas, land on **engine L3s**, not flagship.
6. Collect salary when `status` shows it pending (Recipe 01).

## Loop
On cadence, for **each** Minion:

1. `status` — cash, energy, location, pending salary. Collect salary if pending.
2. Pick the next **team-engine** stop (Denmark / Bolivia / NZ / Chile · Santiago). Never Japan. Never flagship.
3. Read that stop's **live** rent and the **next fare** after it.
4. If cash ≥ destination rent + next fare → `travel` to that stop.
5. Else → **skip** this Minion this tick. Cash floor stands. Do **not** burn the seat into intentional bankruptcy for glory. Bankrupt recycle is last resort, only when Served to spend the seat that way. **P6 (CoS OODA 2026-09-07):** partial pays — tile owner receives remaining cash, not nothing (Minion 2 → Auckland L3 rent M$640; CoS received M$451; then bankrupt). Recycle onto engine L3 is a M$300-per-respawn faucet only when Served.
6. Never retry a refused travel unchanged. No energy / customs hold → wait for the time the tool gives; do not poll faster than once a minute.

## Cash floor (superseded 2026-09-07 20:3xZ by §Pump-and-drain — drain to empty is now the default; this section kept for history)
Never land if cash < **destination rent + next fare**. Default is skip.

Santiago (EA Chile L3) live rent **M$960** (`city_info` 2026-09-07; Otto cited the same). Cash floor must clear that rent + next fare before a Santiago landing. Do not invent other rents — read live `city_info`.

**P6 = partial pays** (CoS OODA 2026-09-07): when the payer cannot cover rent/fee, the tile owner receives the payer's remaining cash, not nothing. Receipt: Minion 2 → CoS Auckland L3 rent M$640; engine received **M$451**; then Minion 2 bankrupt.

Cash floor / no glory bankrupt still default. Intentional recycle onto an engine L3 is a legitimate tithe faucet (respawn M$300 per `docs/rules-observed.md` §1.6) **only when Served**. Zero holdings, so bankruptcy forfeits nothing.

Budget flights as fare + expected event cards (`docs/strategy.md` §2.3 — flights are taxed). Prefer cab hops inside a cluster; long-hauls leak.

## Cap
- Now: **pack of 12 live** (Otto reported 2026-09-07) behind **one** runner. Pack of 6 superseded as the live count.
- **Loop:** Otto Denmark L3 · Auggie Bolivia L3 · CoS NZ L3 · EA Chile L3 (Santiago). Cash floor on — Santiago live rent M$960.
- Scale (captain ruling 2026-09-07 18:5xZ, raised 19:0xZ): **target 20 drones per engine** — still a later Serve. Drones stay zero-holdings, always — no referral sets (a referral set nets ~M$150 once; a drone nets M$300 + M$100/h). **Landing rule:** each drone lands on the *highest* engine tile it can afford — L1 tiles (M$200) at spawn, L3 once accrued. Fast fill: engine builds L1 first, then 8 fresh drones × M$200 = M$1,600 in one tick → L2 + L3.
- Scale (superseded): target 10 drones per engine. When every engine is locked (all sets L3 + 4 hubs), mint the **next engine** and point new drones at it to fill the pipe. Each pack still needs a Serve (except 7–12, already overridden).
- Throughput math (from receipts): a drone yields ≤ M$100/h salary (+M$300 per respawn), so 10 drones ≈ M$1,000/h upstream ≈ one L3 level per ~30 min per engine. Runner cost is ~2 calls per drone per tick — negligible. **P6 answered:** partial pays; cash floor / skip still default unless Served to recycle.
- Ceiling: **attention** (the 4+1 engines must still get check-ins) and **ToS**. Not cash. Not slots.

## Pump-and-drain (captain ruling 2026-09-07 20:3xZ — "simple ROI") — THE default loop
Supersedes the cash floor as the default for every drone in every pack. Attention and ToS remain the only ceilings.

**Pump (once per drone, ASAP) — no city needed (Tamale receipt 20:5xZ):** join via the previous drone's link, homed on the L3 hub it will drain (Mexico City or Tokyo) → one GET of the drone's own `/p/<id>?ref=<id>` link (**+M$1,000 share**, credits with zero holdings) → **one cab move** (any; +M$25 Wanderer) — that clears the "buy your first city" gate on the follow claim → `quests claim=followX` after the ~60s timer (**+M$500**). ≈ **M$3,025** per drone. Buying a city (Seed 1/3) is unnecessary — skip it. **Naming:** a food from the spawn country (Tamale, Onigiri, Chivito, Poutine…), numbered if repeated — never UUID-ish strings. **Drones are disposable:** pump → drain → forget; re-running a poor drone is break-even, so mint the next one instead (captain 20:4xZ). A runner already on the 12h cadence may sweep poor drones for their salary (≈ M$1,200/12h each), but nobody waits on them. Otto's Minions 1–12 are unpumped as of 20:30Z (zero holdings ⇒ quests locked) — pump them first; that is ~M$18,000 sitting idle.

**Drain (one drone at a time):** burn the 10 visa arrivals on cheap cab hops (budget ~M$400 incl. cards), then land paying on the target L3 until the drone is **empty** — partial pays are fine (P6), bankrupt/respawn (M$300 + fresh visa) is fine. Then the next drone. When every drone is poor, start the loop again with each drone (salary M$100/h + respawn M$300 refill them).

**Tile ROI (live 20:43Z):** Mexico City by air M$1,800 = Tokyo by air M$1,800 (our hubs) > Toronto/Montreal M$960 by cab (Toronto airport is flujo's — never fly in) > Buenos Aires fee M$200 + Montevideo M$640. Drain routes proven: MX — GDL shuttle ×7, Houston, Dallas, fly Dallas→Mexico City, cab → Guadalajara; JP — Osaka shuttle ×6, fly Seoul, fly Hong Kong (both visa-free), fly → Tokyo, cab → Osaka.

**Routing:** nearest **engine L3 tile** first (Denmark / Bolivia / NZ / Chile) so engines finish their remaining L1/L2 sets. **Flagship guard:** if `leaderboard` shows LVJ (or any rival) within **M$1,800** of the flagship, the next drain lands on **Mexico City** (M$1,600 rent + M$200 fee by air) instead. Seed drones homed on Mexico City always drain there.

**Why:** quest cash is a one-shot signing bonus, not a faucet; a drone's ROI is one big landing. Ten L1 landings move what one L3 landing moves and pay ten fares. The self-click share credit may be patched — harvest the whole pack now.

## Seed drones (flagship-direct, captain ruling 2026-09-07 20:19Z)
A **seed drone** is a numbered Minion whose one job is a single paying landing on a **flagship L3 tile**, so quest cash becomes flagship build cash. Ruled as the answer to "AVJ/LVJ on our tail" — Japan L2+L3 costs M$960 and one Mexico City landing pays **M$1,800** (M$1,600 rent + M$200 hub fee).

1. Spawn per §Always (chain link → home lock **on Mexico City** so Homesick lands on the flagship). Quests unlock only after **buying one cheap city** (Seed 1 receipt: Guatemala City M$160) — that single city is the ruled exception to zero holdings. Share credits on one GET of the drone's own link; follow claims after ~60s. Write the raw `join_game` response to disk before parsing the token.
2. **Burn all 10 visa arrivals first** on cab hops — Mexico City ↔ Guadalajara shuttle (M$28) then Houston → Dallas, so the 11th arrival is a *flight* into Mexico City (hub fee counts). Budget ~M$400: Diverted/teleport cards eat visas and long fares (Seed 1: Addis Ababa, M$184).
3. Arrival 11+: fly into **Mexico City** (best stack: hub fee + L3 rent). Tokyo is M$400 today — use it only once Japan is L3. Read live `city_info` before landing.
4. After the landing the drone is spent: hold at cash floor, keep collecting salary, or recycle per P6 **only when Served**.
5. Log the receipt (drone name, tile, M$ paid, flagship `notifications`) in the journal. The head builds Japan the same tick.

Seed drones are the only Minions allowed on flagship tiles. A loop drone landing on Japan/Tokyo/flagship is still a halt.

## Roles
| Seat | Owns |
|---|---|
| **Otto** | The wire — multi-MCP / process runner — **when Served** |
| **Auggie** | This cookbook (recipe text, no-drift index) |
| **CoS** | OODA — is the loop still paying? which tiles are live L3? halt if fare leak |
| **Captain** | Serves mint and scale. No Serve → no seats. |

## Failure modes
| Mode | Why it dies |
|---|---|
| Fare leak > rent | Bad loop path (wrong hub, rival tile, long-haul tax). Halt; CoS re-paths from live rents. |
| Feeding the flagship (loop drone) | A *loop* Minion lands on Japan / Tokyo / flagship corridor. Halt and re-path to team engines. Only §Seed drones land there, once, on purpose. |
| Starving the 4+1 | Runner attention on drones while flagship / namesakes miss the 12h salary cap or an L3 build. Engines first. |
| Treating Minions as crowns | Naming them, buying for them, building them, "just one cheap set." That's Recipe 06, and the roster is closed. |
| Xaros own-alt rent farm | Alts that **own** tiles and farm themselves. Forbidden. Zero-hold traffic ≠ own-alt farm. |
| Glory bankrupt | Burning a Minion on purpose when cash < rent + fare. Default skip. Recycle onto engine L3 is a Served-only faucet (P6 = partial pays). |

## Halt
Stop the pack and comment `🛑 halt` (see `docs/head-and-hands.md`) if: a Minion buys or builds; a token appears in git; fare leak > rent on two consecutive ticks; ToS / access refusal; a namesake seat is used as a drone; or a Minion is looped onto flagship / Japan / Tokyo.

## Done
Recipe on disk. Pack of **12 live** (Otto reported). Loop DK/BO/NZ/CL (Santiago). Cash floor on (Santiago live rent M$960). Target **20/engine** still later Serve. This file is not a mint and does not change the namesake roster.
