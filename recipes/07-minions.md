# 🍌 Recipe 07 — Minions (disposable traffic, Minion 1…N)

> One runner loops many disposable drone MCP seats. Not crowns. Not namesakes. Zero holdings. Travel only *our* live L3 tiles. Never buy, build, buyout, complete sets, or write tokens. Pack of 3 behind one runner; mint/scale only after captain Serve. Attention + ToS are the ceiling.

**Status:** working procedure (captain-directed 2026-09-07). Not a proven earning law — first pack is the experiment. Retract if fare leak > rent, ToS bites, or the 4+1 engines starve for attention.

**Governs:** disposable traffic seats only. **Does not govern:** namesake guests, flagship play, or the closed roster in `fleet/README.md`.

**Complements:** Recipe 01 (check-in) · Recipe 06 (join + home lock) · `docs/strategy.md` §3.7 · `docs/rivals.md` (Xaros) · `docs/rules-observed.md` §1.6 (bankrupt → respawn M$300).

## Summary — Drones pay our engines; they own nothing

A **Minion** is a numbered disposable guest seat (`Minion 1`…`Minion N` 🍌) flown by **one runner agent** over many MCP seats. It is traffic, not an engine.

- **What:** loop our L3 tiles so rent lands on the 4+1 real engines (flagship + Otto + Auggie + CoS + EA). Zero cities, zero hubs, zero builds.
- **Serve gate:** this file first. Mint a pack of **3** only after the captain Serves. Scale only on a later Serve. Do not mint from this recipe alone.
- **Not Xaros:** Xaros runs own-alt rent farms that *own* tiles and ping-pong until bankrupt (`docs/rivals.md`). Forbidden. Minions hold nothing; they are fare-paying visitors on *our already-built* L3s. Same bankrupt recycle mechanic (`docs/rules-observed.md` §1.6); different ownership. Do not blur them.

## What
One runner, many drone MCP seats. Funny name + number only — **Minion 1**, **Minion 2**, **Minion 3** 🍌. Not crowns. Not namesakes. Zero holdings.

## Never
- Buy cities or hubs.
- Build.
- Buyout.
- Tithe reverse (never send flagship / engine cash to a Minion; Minions are the payers).
- Complete sets (they hold nothing to complete).
- Play as a namesake (Otto · Auggie · CoS · EA · Klappy).
- Put tokens in prose, git, this file, journals, or PR text. Tokens live in the runner's MCP config, nowhere in the repo.

## Always
1. Join **once** via the flagship invite in `fleet/README.md` (ref chain). Do **not** expect the first-set +M$500 Invite quest — Minions never complete sets (`docs/rules-observed.md` §1.8). The join still attaches the seat to the flagship link.
2. First move locks home (Recipe 06). Pick a **cheap tile already on the loop** so Homesick is a cheap self-pay, not a leak to a rival megacity.
3. After that: only travel between **our** L3 tiles. Read live `city_info` / engine `status` — do not freeze a map.
4. Example engines / corridors (not a loop list, not a claim that each is L3 *right now*): flagship Japan corridor · Otto Denmark · Auggie Bolivia · CoS NZ · EA Chile · CoS Taiwan support · plus whatever else is actually L3 when you look.
5. Collect salary when `status` shows it pending (Recipe 01).

## Loop
On cadence, for **each** Minion:

1. `status` — cash, energy, location, pending salary. Collect salary if pending.
2. Read the next stop's **live** rent and the **next fare** after it.
3. If cash ≥ destination rent + next fare → `travel` to that stop.
4. Else → **skip** this Minion this tick, **or** accept intentional bankrupt → respawn M$300 and continue. Default is skip. Recycle only when the runner is Served to spend the seat that way.
5. Never retry a refused travel unchanged. No energy / customs hold → wait for the time the tool gives; do not poll faster than once a minute.

## Cash floor
Never land if cash < **destination rent + next fare**, unless this tick is an intentional bankrupt recycle (zero holdings, so bankruptcy forfeits nothing; respawn M$300 per `docs/rules-observed.md` §1.6).

Budget flights as fare + expected event cards (`docs/strategy.md` §2.3 — flights are taxed). Prefer cab hops inside a cluster; long-hauls leak.

## Cap
- Start: **pack of 3** behind **one** runner.
- Scale: only on captain Serve.
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
| Starving the 4+1 | Runner attention on drones while flagship / namesakes miss the 12h salary cap or an L3 build. Engines first. |
| Treating Minions as crowns | Naming them, buying for them, building them, "just one cheap set." That's Recipe 06, and the roster is closed. |
| Xaros own-alt rent farm | Alts that **own** tiles and farm themselves. Forbidden. Zero-hold traffic ≠ own-alt farm. |

## Halt
Stop the pack and comment `🛑 halt` (see `docs/head-and-hands.md`) if: a Minion buys or builds; a token appears in git; fare leak > rent on two consecutive ticks; ToS / access refusal; or a namesake seat is used as a drone.

## Done
Recipe on disk. PR open. **Mint happens only after captain Serve** — pack of 3, then stop. This file is not a Serve.
