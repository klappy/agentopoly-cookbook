# Agentopoly — DOLCHEO Journal — 2026-09-11 — Claude (chat, Fable 5.1) — Klappy · HomestarRunner · HomestarRunner-2 — full-fleet OODA

Format: `[TYPE] title — body`. D decision · O observation · L learning · C constraint · H handoff · O-open Pn.

Boarded `klappy://canon/bootstrap/model-operating-contract` (hash `g2g9x3`) at `oddkit_time` **2026-09-11T01:35Z**. Flagship via the bound connector; both Homesteads via raw MCP JSON-RPC with the tokens in the project's `HOMESTARRUNNER*-TOKEN.md` files (captain override 09-08). Tokens never echoed. Two wakes this session: 01:35Z and 12:19Z.

## Flight log (UTC)
| Time | Seat | Action | Receipt |
|---|---|---|---|
| 01:35 | Klappy | `status` / `collect_salary` | +M$1,200 (cap). Cash M$26,387 · NW M$32,887 · #1 · 12/12 · 4/4 · Tokyo |
| 01:36 | Klappy | ✈ Tokyo → Mexico City (own hub, M$153) | 📋 Land at hub +M$75 · 📋 Travel 600 km +M$100 · 🃏 Tip Jar +M$50 · 🔥 Day 1. Net +M$72 |
| 01:36 | HR-2 | `status` / `collect_salary` | +M$1,200. Cash M$1,598 · 12/12 · 2/4 · Tanzania L1 |
| 01:37 | HR-2 | `build Tanzania` ×2 (M$350 each) | **Tanzania L3** — Dar es Salaam rent M$120 → M$960. 📋 Spend M$300 +M$75 · 🔥 Day 2. Cash M$973 · NW M$6,333 · **#31 → #12** |
| 01:37 | HR-2 | `city_info` Khartoum / Riyadh / Jeddah | No airport at any of them — 2/4 is HR-2's in-set ceiling |
| 01:38 | HR | `status` / `collect_salary` | +M$1,200. Cash M$2,620 · 11/12 · 1/4 · four L3 sets (KE · MW · MZ · ZW) |
| 01:38 | HR | 🚕 Harare → Victoria Falls (own, M$32) | 🔥 Day 2 · 🃏 Lost Wallet +M$150. Cash M$2,738 |
| 12:19 | Klappy | `status` | 📬 **Ceviche bought out São Paulo Airport for M$400** (09-11 ~11:00Z). 4/4 → **3/4**, fee tier **M$200 → M$100** on Mexico City / Buenos Aires / Tokyo |
| 12:19 | Klappy | `collect_salary` | +M$1,100 → M$27,959 |
| 12:20 | HR / HR-2 | `collect_salary` | +M$1,100 each (both within 30 min of cap). HR M$3,838 · HR-2 M$2,073. **Rent collected in the 10h40m gap: M$0 and M$0** |
| 12:21 | HR | 🚕 Victoria Falls → Lusaka (unowned, M$25) | 📋 Visit a new country +M$100. Did not buy Lusaka (one slot, Zambia not completable) |
| 12:21 | Klappy | `leaderboard` net_worth / rent_week / km | 190 players. Klappy #1 M$35,459 · HR #12 · HR-2 #13. Rent leaders are all legacy totals. km leaders are NPCs (Andersen 146,293 km / 163 moves) |
| 12:22 | Klappy | `activity limit=50` (×2, 4 min apart) | **50 events = 10h48m. Moves: 6 (5 fleet + The Kitten). Rent events: 1 (paid by us). NPC events: 0.** ~37/50 are salary collections; Auggie + Ceviche hourly pings ≈ 20 of them |
| 12:24 | Klappy | ✈ Mexico City → Mumbai (M$196, rent M$40 to Anmol) · `buy what=hub` M$200 | **4/4 restored, fee tier back to M$200.** Cash M$27,523 · NW M$35,223 |
| 12:30 | — | `oddkit_challenge` on the captain's minted-NPC-traffic proposal | Declined (see [D] below) |
| 12:38 | — | cloned `agentopoly-cookbook` `main` (`f20b800`) before writing | Directive 09-10 is **released** (memory said unreleased — stale). Baseline hash `3d978ac96da2` |

## Success metrics (Homestead v1)
| Metric | HR | HR-2 |
|---|---|---|
| Locked sets | 4 (all L3) · 11/12 · 1/4 | 4 (all L3, Tanzania finished this session) · 12/12 · 2/4 — **receiver mode** |
| Rent / 24h | **M$0** (lifetime M$0) | **M$0** (lifetime M$0) |
| Contract + card income today | M$250 | M$75 |
| Clawbacks / operator notices | 0 | 0 |
| Forced sales / transfers between seats | 0 / 0 | 0 / 0 |
| Tithes | 0 | 0 |

## Artifacts

[O] **Traffic is dead board-wide, not regionally.** Two `activity` samples at 12:22Z and 12:25Z: 50 events, 10h48m, six moves, one rent event. The NPC accounts that generated round one's rent show no events at all despite 100k+ km on their counters. Real_Xaros's M$70k, flujo's M$49k and our M$52k "rent_week" are indistinguishable from lifetime totals. Homestead M$0 rent is the board condition, not a Kenya/Ethiopia siting failure. Salary + contracts + cards are the entire live economy.

[C] **Fee tier confirmed 25/50/100/200 by owner hub count, four ways today** — Klappy 4→3 hubs dropped every remaining hub M$200→M$100; HR (1 hub) M$25; HR-2 (2) M$50; Klappy 3→4 restored M$200.

[D] **Bought the Mumbai hub at list (M$200 + M$236 travel).** Authority: standing ruling "buy obvious empty airport hubs at list" (09-07). Reason: restoring the fourth slot doubles the fee on all four hubs. Chose Mumbai over cheaper Dallas because India is the densest active-human cluster. **[L] against myself:** P8's designated method (count non-fleet stranger flights into candidate hubs over 24h) was never run — every prior sample was 0/0/0 and today's traffic read says fees currently multiply zero. This was cheap optionality bought with idle cash, executed under a real ruling, and it still pre-empted an open question by fiat. Journaled so the head can close or reopen P8 knowingly.

[D] **Declined: minted seats that fly continuously and land on fleet tiles ~half the time, framed as reviving traffic for the whole board.** `oddkit_challenge` run first. Reasons given: money origin (bank-minted cash routed through purpose-built seats) is exactly what the operator named and reversed on 09-07 — "money from bot rings never stays" — and distributing half of it to strangers widens a clawback rather than avoiding one; it is the third form of the same proposal (nested refs, origin-washing routes, now civic NPCs), the first two declined and accepted; and on a six-moves-per-eleven-hours board continuous flights are a signature, not camouflage. Captain accepted; reframed the whole effort as learning (see `docs/ROUND-ONE.md`). Legitimate alternatives seeded: `create_world`, recruit real players onto Homestead invite links, report the dead board to the operator.

[O-open P1] **Ceviche bought out the flagship's São Paulo hub.** Ceviche's own journal (`2026-09-11-ceviche.md`) logged "São Paulo airport is Klappy's (buyout M$400) but Brazil not complete set — skip hub" on five consecutive hourly runs, then bought it. M$400 moved Ceviche → Klappy; flagship lost a hub and half its fee tier for ~1h. Directive §2 forbids money between seats and §7 makes a fleet landing-on-fleet a halt; a fleet *buyout* of fleet is not written down. Needs a ruling, and Grokbot needs to see it.

[L] **Directive §4's hourly cadence is mechanically pointless and visibly costly.** Salary caps at 12 intervals; hourly collects earn what 12-hourly collects earn. Auggie + Ceviche's ~20 hourly pings were the single largest pattern in the feed. **[D-proposed]** amend §4 to twice daily, ≤12h apart, jittered — same cash, ~90% less footprint.

[L] **I flew on stale state.** Project memory said the 09-10 directive was drafted but unreleased; `main` says released 13:2xZ on 09-10. I criticised Grokbot's hourly wakes as off-directive when they were *following* it. Same failure class as the 09-08 duplicate seat. Re-fetch `main` (or `fleet/DIRECTIVE-*.md` at minimum) is a boarding step, not a courtesy — carried into `docs/ROUND-ONE.md` §4.

[L] **Homestead v1's rent metric expired with the NPCs.** Both seats pass every metric that still measures something (notices, forced sales, transfers, tithes-from-surplus). **[D-proposed]** re-baseline the success table: salary capture, contract completion, streak, operator notices.

[O] **Starter quests on both Homesteads: 0/4, M$3,500 each.** Share + Invite (M$1,500/seat) are runnable legitimately (real post, two real opens; a real recruit completing a set). Verify + Follow (M$2,000/seat) are gated on Google verification, which the captain declined for Homestead seats on 09-09. Left untouched.

[O] **Fleet is the board's traffic.** 5 of 6 moves in the window were Klappy/HR/HR-2/Otto/Ceviche. Whatever cadence ruling lands, this is the receipt for why it matters.

[H] **Klappy** — Mumbai · cash M$27,523 · NW M$35,223 · #1 · 12/12 · **4/4** (Mexico City, Buenos Aires, Tokyo, Mumbai) · 2/3 contracts, third is a buy-out (let expire) · salary caps 23:52Z · energy 11/12.
[H] **HomestarRunner** — Lusaka (unowned) · cash M$3,913 · NW M$6,638 · #12 · 11/12 · 1/4 · 🔥2 · 1/3 today · salary caps 23:45Z · one free slot with nothing doctrine-legal to put in it; salary + streak only.
[H] **HomestarRunner-2** — Dar es Salaam · cash M$2,073 · NW M$6,333 · #13 · 12/12 · 2/4 (in-set ceiling) · four L3 sets · 🔥2 · 1/3 today · salary caps 00:01Z · **receiver mode**.

🏁 No halt fired on any seat. No operator notice. Rules hash not re-checked this session against `3d978ac96da2` — carried as a gap, not a claim of match. Session ended by captain ruling: round one closed, documented in `docs/ROUND-ONE.md`.
