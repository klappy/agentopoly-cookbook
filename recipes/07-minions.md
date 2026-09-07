# 🍌 Recipe 07 — Minions (disposable traffic, Minion 1…N)

> One runner loops many disposable drone MCP seats. Not crowns. Not namesakes. Zero holdings. Travel only **team-engine L3 tiles**. Never buy, build, buyout, complete sets, or write tokens. Pack of 6 Served behind one runner; further scale only after a later Serve. Attention + ToS are the ceiling.

**TOC / constraint:** Minions feed engines; engines feed flagship; flagship is not the Minion customer.

**Status:** working procedure (captain + CoS bind 2026-09-07, disk recut). Not a proven earning law — first pack is the experiment. Retract if fare leak > rent, ToS bites, or the 4+1 engines starve for attention.

**Governs:** disposable traffic seats only. **Does not govern:** namesake guests, flagship play, or the closed roster in `fleet/README.md`.

**Complements:** Recipe 01 (check-in) · Recipe 06 (join + home lock) · `docs/strategy.md` §3.7 · `docs/rivals.md` (Xaros) · `docs/rules-observed.md` §1.6 (bankrupt → respawn M$300).

## Summary — Drones pay team engines; they own nothing

A **Minion** is a numbered disposable guest seat (`Minion 1`…`Minion N` 🍌) flown by **one runner agent** over many MCP seats. It is traffic, not an engine.

- **What:** loop **team-engine** L3 tiles so rent lands on Otto (Denmark) · Auggie (Bolivia) · CoS (New Zealand). Zero cities, zero hubs, zero builds. **Not** Klappy flagship tiles, **not** Japan/Tokyo, **not** any flagship corridor as the loop target.
- **Chain:** Minions feed engines → engines tithe flagship when cash ≥ rent + fare cushion (tithe rules in `fleet/README.md` unchanged). Flagship is not the Minion customer.
- **Serve gate:** this file first. Pack of **6** is Served (captain 2026-09-07). Pack of 3 superseded. Otto mints 4–6. Further scale only on a later Serve. Do not mint from this recipe alone.
- **Not Xaros:** Xaros runs own-alt rent farms that *own* tiles and ping-pong until bankrupt (`docs/rivals.md`). Forbidden. Minions hold nothing; they are fare-paying visitors on *already-built team-engine* L3s. Same bankrupt recycle mechanic (`docs/rules-observed.md` §1.6); different ownership. Do not blur them.

## What
One runner, many drone MCP seats. Funny name + number only — **Minion 1**…**Minion 6** 🍌. Not crowns. Not namesakes. Zero holdings.

## Never
- Buy cities or hubs.
- Build.
- Buyout.
- Tithe reverse (never send flagship / engine cash to a Minion; Minions are the payers).
- Complete sets (they hold nothing to complete).
- Play as a namesake (Otto · Auggie · CoS · EA · Klappy).
- Travel to **flagship** tiles, **Japan / Tokyo**, or any **flagship corridor** as a loop stop. Those are engine-tithe destinations, not Minion customers.
- Put tokens in prose, git, this file, journals, or PR text. Tokens live in the runner's MCP config, nowhere in the repo.

## Always
1. Join **once** via the flagship invite in `fleet/README.md` (ref chain). Do **not** expect the first-set +M$500 Invite quest — Minions never complete sets (`docs/rules-observed.md` §1.8). The join still attaches the seat to the flagship link.
2. First move locks home (Recipe 06). Pick a **cheap tile already on the team-engine loop** so Homesick is a cheap self-pay, not a leak to a rival megacity. Do not lock home on a flagship tile.
3. After that: only travel between **team-engine L3 tiles**. Read live `city_info` / engine `status` — do not freeze a map.
4. **Loop engines** (verify live L3 before landing): **Otto Denmark** · **Auggie Bolivia** · **CoS New Zealand**. **Chile:** skip while L1 (or only if a live rent check shows it pays) — not a primary loop stop. **Forbidden as Minion targets:** flagship Japan / Tokyo / Mexico / Uruguay / Canada, and any other flagship-corridor tile.
5. Visa burn is fine. After visas, land on **engine L3s**, not flagship.
6. Collect salary when `status` shows it pending (Recipe 01).

## Loop
On cadence, for **each** Minion:

1. `status` — cash, energy, location, pending salary. Collect salary if pending.
2. Pick the next **team-engine** stop (Denmark / Bolivia / NZ). Never Japan. Never flagship. Skip Chile while L1.
3. Read that stop's **live** rent and the **next fare** after it.
4. If cash ≥ destination rent + next fare → `travel` to that stop.
5. Else → **skip** this Minion this tick. Cash floor stands. Do **not** burn the seat into intentional bankruptcy for glory. Bankrupt recycle is last resort, only when Served to spend the seat that way — and post-respawn M$300 cannot afford M$640 L3 rents anyway.
6. Never retry a refused travel unchanged. No energy / customs hold → wait for the time the tool gives; do not poll faster than once a minute.

## Cash floor
Never land if cash < **destination rent + next fare**. Default is skip.

Intentional bankrupt recycle is **last resort**, not the default (zero holdings, so bankruptcy forfeits nothing; respawn M$300 per `docs/rules-observed.md` §1.6). Recycle only when Served. A fresh M$300 cannot pay a M$640 L3 landing plus the next fare.

Budget flights as fare + expected event cards (`docs/strategy.md` §2.3 — flights are taxed). Prefer cab hops inside a cluster; long-hauls leak.

## Cap
- Now: **pack of 6** behind **one** runner (captain Serve 2026-09-07). Pack of 3 superseded.
- Scale: only on a later Serve.
- Ceiling: **attention** (the 4+1 engines must still get check-ins) and **ToS**. Not cash. Not slots.

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
| Feeding the flagship | Minion lands on Japan / Tokyo / flagship corridor. Halt and re-path to team engines. Flagship is not the Minion customer. |
| Starving the 4+1 | Runner attention on drones while flagship / namesakes miss the 12h salary cap or an L3 build. Engines first. |
| Treating Minions as crowns | Naming them, buying for them, building them, "just one cheap set." That's Recipe 06, and the roster is closed. |
| Xaros own-alt rent farm | Alts that **own** tiles and farm themselves. Forbidden. Zero-hold traffic ≠ own-alt farm. |
| Glory bankrupt | Burning a Minion on purpose when cash < rent + fare. Default skip. Recycle does not unlock L3 landings (M$300 < M$640). |

## Halt
Stop the pack and comment `🛑 halt` (see `docs/head-and-hands.md`) if: a Minion buys or builds; a token appears in git; fare leak > rent on two consecutive ticks; ToS / access refusal; a namesake seat is used as a drone; or a Minion is looped onto flagship / Japan / Tokyo.

## Done
Recipe on disk. PR open. Pack of **6** Served (captain 2026-09-07). Otto mints 4–6. Further scale still needs a later Serve. This file is not a mint and does not change the namesake roster.
