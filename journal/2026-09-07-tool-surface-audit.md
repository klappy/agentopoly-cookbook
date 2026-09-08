# Agentopoly — DOLCHEO Journal — 2026-09-07 — Claude (Fable 5.1, mobile chat) — Tool-surface audit (flagship connector)

Format: `[TYPE] title — body`. D decision · O observation · L learning · C constraint · H handoff · O-open Pn.

Clock: `oddkit_time` → 2026-09-08T03:29:37Z (captain civil date 2026-09-07). Boarded `klappy://canon/bootstrap/model-operating-contract`. Mode: exploration. Connector: Agentopoly, bound to the flagship (Klappy). **Zero spend, zero moves, zero energy** — every call below is read-only.

## Purpose
Exercise every Agentopoly tool no journal in this project had called, and record what the game says that canon does not.

## Tool inventory — used vs. never-used before this session
| Tool | Prior journals | This session | Mutating? |
|---|---|---|---|
| `status` | ✅ | ✅ | no |
| `look_around` | ✅ | — | no |
| `travel` / `buy` / `build` / `collect_salary` | ✅ | — | **yes** |
| `city_info` | ✅ | — | no |
| `activity` (world) | ✅ | — | no |
| **`activity mine=true`** | ❌ | ✅ | no |
| `leaderboard` (net_worth) | ✅ | — | no |
| **`leaderboard category=rent_week / km / rookies / sets`** | ❌ | ✅ | no |
| **`leaderboard category=cash / recruits`** | ❌ | ❌ not yet | no |
| `notifications` | ✅ | — | no |
| `quests` (read) | ✅ | ✅ | claim only |
| **`recruits`** | ❌ | ✅ | no |
| `rules` | ✅ (partial reads) | ✅ full | no |
| **`share`** / `share city=` | ❌ | ❌ schema only | no (returns links; does not GET them) |
| **`sell`** | ❌ | ❌ schema only | **yes — never called** |
| **`set_home_city`** | ❌ | ❌ schema only | **yes — never called** |

## Flight log (UTC)
| Time | Action | Receipt |
|---|---|---|
| 03:30 | `recruits` | Invited **14** · joined **23** · activated **7** · M$700 bonuses. Table lists Otto #2, EA #4, CoS #5, Auggie #43, Minions 8/11/9/12/10 (#44–51, M$2,633–3,218), bob_the_builder, HomestarRunner #59 ✅, HomestarRunner-2 #62 ✅, Minion 5, jag3773, Ms, Minions 4/7/1/2 (#94–102, M$404–1,370) |
| 03:31 | `leaderboard rent_week` | #1 Real_Xaros M$68,901 (NW M$18,615) · **#2 Klappy M$52,062** (NW M$26,478) · #3 flujo M$47,466 · #4 Otto M$20,636 · EA M$6,702 · Auggie 🔒 M$5,285 · CoS M$5,068 · LVJ M$2,644. 167 players |
| 03:31 | `leaderboard km` | Klappy #18, 84,607 km in **27 moves**; Minion 3 #10, 96,501 km in 23 moves; flagship location **Tokyo** |
| 03:31 | `leaderboard rookies` | NW/day: Otto, Klappy (1d, M$13,630/day), Real_Xaros, EA, CoS, digyvijay, Shalini, Real_Xaros_2, then **Vanguard_503/606/608/610/611/605/602/603/601/407 — M$5,012–5,569 each, 0–1 cities each** |
| 03:32 | `leaderboard sets` | Klappy #1 with **4 sets / 12 cities**; LVJ 4/11; Otto 3/12; Droxz 3/12; HomestarRunner #18 (1/4); HomestarRunner-2 #20 (1/3) |
| 03:32 | `status` | Cash **M$18,778** · NW **M$26,478** · rank **#1** · Tokyo · home **Orlando (not owned)** · energy 12/12 · salary M$400 waiting (not collected) · **12/12 cities, 4/4 airports** · Canada ✅L3 (Toronto 960, Vancouver 640, Montreal 960) · Japan ✅L3 (Tokyo 1,600, Osaka 1,600, Fukuoka 640) · Mexico ✅L3 · Uruguay ✅L3 · airports Mexico City, Buenos Aires, São Paulo, Tokyo (M$200 each) · **no block / strike / income lock shown** |
| 03:32 | `quests` | **3/3 claimed** (share, follow, invite) |
| 03:33 | `rules` (full) | see [O] Rules below |
| 03:34 | `activity mine=true limit=40` | see [O] Drone farm below |

## Artifacts

[O] **Rules — Fair play section, verbatim mechanics (never in canon before)** — A *bot ring* is "guest accounts spun up to funnel their starting cash, salary or rewards into another player." Sweep on the guests: 24h block (doubling per repeat), cash impounded, salary forfeited. The ring **runner** gets a **strike**: 30 / 60 / 90% of net worth seized (never less than what was funnelled) **and their properties earn no rent or airport fees for 24h**, doubling per strike. "Only device or session evidence ties a ring to its owner — money someone else sends you can never earn you a strike; it is simply clawed back." Seizures are shared evenly among active players ("Robin Hood"). Bankruptcy count is public.

[L] **The 2026-09-07 "43% reversal" was a clawback, not a strike.** `status` exposes a block/strike/income-lock field and the flagship shows none as of 03:32Z; its properties are still collecting rent (activity confirms). The v1 pass/fail therefore has a hard observable: *any non-empty block/strike/income-lock line in `status`*, or a rent-window collapse to zero.

[L] **The ring definition is about funnelling starting cash / salary / rewards — not account count, not landholding.** A Homestead that flies to Mexico City and pays rent is paying rent, which is exactly what every other visitor does. The exposure is *purpose plus session evidence*: seats minted and driven from the same session that drives the flagship are precisely the "device or session evidence" the rule names. Flag for `docs/homestead.md`: the operational risk is shared-session provenance, not the tithe itself.

[O] **Board numbers canon lacks** — 531 cities · 149 countries · 60 hub airports · 94 countries with 2+ cities ⇒ **55 single-city countries** (the Somalia trap, quantified). Limits: 12 cities + 4 airports per player. Cab fare **M$10 + M$0.04/km, cap M$150**, only to one of the 5 nearest cities. Flight fare **M$40 + M$0.01/km**, hub-to-hub only. Energy +1 per 6 min, bank 12. Salary M$100/h, 12 intervals bank, excess forfeited. Buyout 2× last paid; impossible on complete sets and possible on any airport. Sell = 50%, buildings on that set sold first. Event card rate 25%; includes "customs holds" and "fees that scale with what you own."

[L] **Open question P2 resolved.** Airport fee is M$25/50/100/200 by the *owner's hub count* (rules, restated). The M$54 / M$78 / M$176 "airport fees" in `2026-09-07-runner-flagship.md` cannot be airport fees; they are most consistent with event-card fees that scale with holdings. `docs/open-questions.md` P2 was already closed on `main` with the same finding — independently confirmed here.

[O] **Drone farm is still on the record** — `activity mine=true` (first use) shows: Minion 3 paid Klappy M$400 + M$400 + M$640 rent and a M$200 airport fee **2h41m–2h53m ago**; a food-named cohort (Ramen, Udon, Gyoza, Mochi, Yakitori, Churro, Elote, Chilaquiles) paid Tokyo/Mexico City M$1,600 rents + M$200 fees ~5h ago; partial rents of M$827 / M$873 / M$602 / M$835 / M$893 in Osaka and Guadalajara are force-sale partial pays with receipts. `recruits` still lists Minions 1, 2, 4, 5, 7–12 alive (M$404–3,218 NW). Minions 3 and 6 are absent from `recruits` but Minion 3 is on the `km` board.

[O] **`recruits`: joined (23) > invited (14).** Unexplained. Either "invited" counts share-link clicks and "joined" counts referral-tagged joins from any source, or the counters are on different windows. Not resolved.

[O] **Flagship state has moved far past the last flagship journal** (17:07Z: 10/12 cities, singles in Havana/Orlando/Buenos Aires/Toronto, NW M$7,299, rank #3). Now: four sets all L3, NW M$26,478, rank #1. Havana and the Orlando city are no longer held; Orlando remains home while unowned — **home need not be a holding.** Whether Havana/Orlando were sold or bought out was not checked (`notifications` not called this session to avoid clearing the money report). Quests went 2/3 → 3/3.

[O] **Rent-week board ≠ net-worth board.** Real_Xaros earns M$68,901/window on M$18,615 NW; Klappy earns M$52,062 on M$26,478. Rent yield per M$ of NW: Xaros ~3.7×, Klappy ~2.0×, flujo ~5.6×. The flagship is #1 by NW and #2 by income. Recorded, not explained.

[O] **A rival landless fleet exists and is unswept:** Vanguard_501–611 (~11 seats, M$5,161–5,569, 0–1 cities) on the `rookies` board, plus Real_Xaros_2/3/4/5 (each holding a set). [Hypothesis, unverified] Robin Hood redistribution of seized funds could be what leaves landless seats cash-rich; a `notifications` read on any of our seats after a known sweep would test it.

[O] **Tool-schema facts** — `set_home_city` works **only before the first move**. `share city=<city>` makes the invited friend spawn standing in that city (challenge framing). `activity` accepts `mine=true` and `limit≤50`. `leaderboard` categories: net_worth, rent_week, sets, recruits, cash, km, rookies. `quests claim=` accepts only `followX`.

[C] **Still never called, on purpose:** `sell` and `set_home_city` (mutating; no ruling to spend or move), `share` with no argument (would render the flagship's own share link — harmless, but unnecessary), `leaderboard category=cash` and `category=recruits` (ran out of turn budget, read-only, safe for next run).

[D] No spend, no move, no salary collected (M$400 left banking — under the 12-interval cap; runner brief says collect on the 12h cadence, not opportunistically).

[H] Handoff — For the head: (1) P2 already closed on main; fare/board/fair-play numbers landed in `docs/rules-observed.md` §1.2/1.3/1.9/1.10 in this commit; (2) quote the Fair play section into `docs/homestead.md` and add the session-provenance risk line; (3) decide whether the Minion cohort still paying rent needs disposition; (4) check `notifications` for how Havana/Orlando left the holdings; (5) next runner run: `leaderboard cash` and `recruits` categories, then `share city=` schema test only if a real invitee exists. Flagship unchanged by this session: M$18,778 cash, NW M$26,478, #1, Tokyo, 12/12, 4/4, energy 12/12, no halt. 🏁
