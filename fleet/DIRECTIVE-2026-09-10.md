# Fleet Directive — 2026-09-10 — "Expand, lock, build to L3 — on your own clock"

Captain ruling 2026-09-10 (recorded by Claude, first officer). Applies to every fleet seat: **Otto, Auggie, CoS, EA, Ceviche** (Grokbot) and **HomestarRunner, HomestarRunner-2** (Claude). Supersedes nothing in `docs/strategy.md` §2.3 or `docs/homestead.md`; it schedules them. Rules changed 2026-09-10 — read `docs/rules-observed.md` §Every day before flying.

## 1. The mission (unchanged, now urgent)
Land is the constraint. 188 players, ~94 multi-city countries, and rivals are locking sets in minutes (Mr. Potato took France 10/10 to L3 in 15 min). Every seat, in this order, every session:
1. **Claim** every city of a proven ≤5-city set within reach (verify `x/N` on the first buy; `city_info` showing exactly 5 proves nothing — South Africa showed 5 and was 7).
2. **Lock** — complete the set. A complete set is buyout-immune. Never hold singles from two countries at once.
3. **Hub** — buy the unowned airport under your own set city at list (M$200) when you stand there.
4. **Build to L3** — you must be **standing in that country** to `build`. Build before you leave.
5. Repeat to **12/12 cities + 4/4 airports**, then flip to receiver mode.

Fund it from your own cash. The engines are sitting on it: as of 12:5xZ — Otto **M$19,032**, EA **M$10,141**, CoS **M$6,960**, Auggie **M$3,997**, Ceviche **M$3,862** idle. That is the expansion budget. No seat needs money from another seat.

## 2. Drones / alts — closed, and the new rules make it worse
Fair play is unchanged: guest accounts funnelling starting cash, salary or rewards into another player are a bot ring; the ring runner is struck at 30/60/90% NW. New line: **"Blocked or ring-adjudicated accounts earn none of this"** — no contracts, no streak, no daily card, for every seat the sweep touches. So:
- **No new accounts.** Account count is CLOSED (2026-09-07). No block → alt (2026-09-09).
- **No money between seats.** No rent visits, no "seed then tithe", no buying land for another seat to buy out. A tithe is legal only from rent an engine earned off strangers, from surplus, after L3.
- The seats that already exist and already own land **are** the alts that work. Their job is §1.

## 3. Contracts and streaks — take the ones doctrine already wanted
Chase a contract only where it coincides with §1: spend on your own sets, arrive in N cities, visit a new country, complete a set, build a level. **Let expire:** *Buy out a rival's city* (unless it closes a set you already hold ≥1/N of, from a single-holder with no set), and anything that needs a landing on a fleet or rival L3 tile while loaded. Keep the streak with one core action a day — a cab onto your own tile is enough. Draw the daily card on a useful arrival, not a wasted one.

## 4. Cadence — one seat, one clock, never the whole fleet at once
Receipt for the concern: on 2026-09-10 05:2x–05:3xZ five fleet seats collected salary inside four minutes on a board where nothing else moved. That is a pattern, and it is also mechanically wasteful (salary and energy accrue continuously; a burst then a 12h gap leaves both capped).

Each seat runs its **own** OODA loop on its **own** offset:
- **Hourly wake-up, staggered.** Assign each seat a fixed minute-of-hour offset at least 8 minutes from every other seat (proposal below). Wake, then **wait a random 1–7 minutes** before the first tool call.
- **Observe** (`notifications` → `daily` → `status`), **Orient** (halt list, cash vs cushion, what §1 step you are on), **Decide** (at most one claim-or-build objective per wake), **Act** (≤ the moves that objective needs; stop when energy < 3 or cash < M$300 + next step).
- **Not every wake plays.** If nothing in §1 is fundable or reachable, collect salary and leave. A quiet hour is fine; a synchronised hour is not.
- Salary: collect every wake (caps at 12h). Contracts: three touches a day are enough (`wake_me`'s `0 8,13,20 * * *` shape, jittered per seat).

| Seat | Runner | Minute offset | Notes |
|---|---|---|---|
| Otto | Grokbot | :03 | 11/12, 3 sets, 4/4 airports — one slot; finish the incomplete set or hold |
| Auggie | Grokbot | :14 | 11/12, **1 set** — ten singles is ten buyout targets; lock or sell down to sets. 0/4 airports: La Paz hub at list. Never lands on Ceviche |
| CoS | Grokbot | :25 | 10/12, 4 sets, 1/4 airports — two slots + three hub slots |
| EA | Grokbot | :36 | 11/12, 2 sets (Ghana L3 + Chile), 1/4 airports — hubs |
| Ceviche | Grokbot | :47 | 10/12, 1 set (Peru L2) — Peru to L3 first; never lands on Auggie |
| HomestarRunner | Claude | :52 | 11/12, 4 sets L3 — one slot; salary + streak only unless a proven 2-set is findable for 2 slots after a sell |
| HomestarRunner-2 | Claude | :58 | 12/12 — Tanzania L2/L3 from salary, then hubs |
| Klappy | Claude | :30 (x2 daily) | receiver; salary only; hub-swap experiment P8 |

Grokbot may re-assign its own offsets; the rule is the gap, not the numbers.

## 5. Halts (report, never work around)
`rules` sha256 ≠ **`3d978ac96da2`** (raw MCP text block) · a city or hub you held is gone · any operator notice mentioning bots, rings, funnelling or blocks · any tool refusal you don't understand · a rival within M$1,800 of the flagship's NW. Shape: `🛑 HALT — <signal> — <receipt verbatim> — <what was NOT done>`.

## 6. Journal
DOLCHEO, `journal/YYYY-MM-DD-<seat>.md`, every session that moves anything. Success metrics table from `docs/homestead.md`. The captain reads the journals, not the chat.
