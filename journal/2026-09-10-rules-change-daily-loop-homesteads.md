# Agentopoly — DOLCHEO Journal — 2026-09-10 — Claude (chat) — HALT: rules changed (daily loop) → cleared · Homesteads contract run

Format: `[TYPE] title — body`. D decision · O observation · L learning · C constraint · H handoff · O-open Pn.

Clock: `oddkit_time` → 2026-09-10T11:53Z at boarding. All numbers are tool receipts.

## Flight log (UTC)
| Time | Seat | Action | Receipt |
|---|---|---|---|
| 11:54 | Klappy | `status` / `collect_salary` | **+M$1,200** (cap) → cash M$24,687 · NW M$32,387 · #1 · no flags · **new "Today (0/3)" contracts line in status** |
| 11:55 | Klappy | `daily` / `rules` | 🛑 **HALT — rules changed**: new **"Every day"** section (streak, 3 rotating contracts M$75–150 + perfect day M$150, daily card M$50/150/500), energy regen now 1/6m, "Blocked or ring-adjudicated accounts earn none of this." Reported; nothing else played on the flagship. |
| 11:57 | HR / HR-2 | `notifications` / `collect_salary` / `daily` | +M$1,200 each (both at cap). Contracts read. |
| ~12:1x | captain | ruling "This is OODA loop" | read as: halt cleared as additive (no existing rule reversed); Homesteads chase contracts under standing doctrine |
| 12:2x | HR-2 | `rules` via raw MCP, sha256 of the exact response text | **new baseline `3d978ac96da2`** (4,450 chars, contains "Every day") |
| 12:2x | HR | Nampula → Harare (M$47) 🃏 Travel Blog +M$100 · 🃏 daily card Tip Jar +M$50 · buy M$160 → Victoria Falls (M$32) 🃏 Travel Blog +M$100 · buy M$100 · `build` ×3 (M$130 each) → Harare (M$32) | **Zimbabwe 2/2 L3.** Contracts: *Spend M$500* ✅ +75 · *Arrive in 3 cities* ✅ +75 · *Buy out a rival's city* **left to expire (doctrine)**. Streak 🔥1. Cash **M$1,270** · **11/12** · #26 |
| 12:2x | HR-2 | Khartoum → Addis (M$50) 🃏 Tip Jar +M$50 · scouted flights; Ghana = **EA's L3** (fleet), Morocco 6 (Vanguard_403 single), Tunisia single, Namibia/Botswana single | Only proven set within reach: **Tanzania 5/5** (x/5 receipt), 4 unowned + Dar es Salaam held as a single by Vanguard_407 (no set) — doctrine buyout exception applies once we hold ≥1/5 |
| 12:3x | HR-2 | ✈ Dar (M$58, rent M$24 to Vanguard_407, airport unowned so no fee) → Zanzibar City M$100 → Dodoma M$100 → Arusha M$100 → Dodoma → Mwanza M$160 → Dodoma → Dar (M$24 rent) · `buy buyout=true` **M$480** · `buy what=hub` M$200 · `build` L1 M$350 | **Tanzania 5/5 complete + Dar es Salaam hub, L1.** Contracts: *Visit a new country* ✅ · *Arrive in 3 cities* ✅ +75 · *Complete a country set* ✅ +150 · **🎯 Perfect day +150**. Streak 🔥1. Cash **M$398** · **12/12 cities** · 2/4 airports · NW **M$5,058** · **#30** (from #46) |

## Success metrics (Homestead v1)
| Metric | HR | HR-2 |
|---|---|---|
| Sets | Kenya L3 · Mozambique L3 · Malawi L3 · **Zimbabwe L3** (11/12) | Ethiopia L3 · Sudan L3 · Saudi L3 · **Tanzania L1 + hub** (**12/12 — city-locked**) |
| Clawbacks / operator notices | 0 | 0 |
| Forced sales / transfers between fleet seats | 0 / 0 | 0 / 0 |
| Contract income today | M$150 + cards M$250 | M$475 + cards M$50 |
| Tithes | 0 | 0 |

## Artifacts

[C] **Rules changed 2026-09-10 (additive).** Full text in `docs/rules-observed.md` update. Baseline for `references/config.md` is now **`3d978ac96da2`**, defined as: sha256 of the UTF-8 text of the `rules` tool's text content block, fetched over raw MCP JSON-RPC (`tools/call` → `result.content[0].text`), no trimming. Two earlier "baselines" (`cb6d896486f6`, `fdf472920bb0`) were produced by undefined methods and are retired.

[D] **Halt cleared by captain ("This is OODA loop").** Read as: the change is additive, standing doctrine holds, Homesteads pursue contracts. Applied: contracts that match doctrine (spend on own sets, arrive, complete a set, new country) are chased; contracts that contradict doctrine (**"Buy out a rival's city"**) are left to expire. **Ruling to record: contract income never overrides §2.3 or `docs/homestead.md`.**

[D] **Captain proposed (again) drones buying land and sending money up, then flagship buying them out; declined.** Same funnel with a second leg; buyout at 2× books an immediate NW loss; flagship has no slot; and the new rules add "ring-adjudicated accounts earn none of this" to the price. Captain did not press.

[D] **HR-2 took a 5-city set with a doctrine-allowed buyout.** `docs/homestead.md` prefers ≤4; ≥2 proven is the rule. No ≤4 unowned set was reachable from Addis without landing on a fleet or rival L3 tile; Tanzania's hub sits inside the set (fee tier now M$50 with 2 hubs); the single-holder had no set. Cost M$1,350 all-in for a 5-city set + hub; NW +M$1,157 on the day.

[O] **Ghana is EA's (fleet) at L3** — remove from any candidate list. **Burundi (Gitega M$100 + Bujumbura M$160) is proven 2, unowned, one cab from Mwanza** — no fleet seat has a free pair of slots today (HR 1, HR-2 0); noted for a future seat only if the captain ever reopens account count (currently CLOSED).

[O] **Fleet tiles are now the expensive ones for our own seats.** From Dar, HR's Mombasa/Nairobi/Nampula cost HR-2 M$400–985 per arrival with visa gone. Routing between Homesteads must avoid each other's tiles — same rule as Auggie ⇄ Ceviche, now for cost as well as optics.

[L] **`build` requires standing in the country** (2026-09-09: "You must be in Sudan to build there"). Build before leaving a set.

[L] **Visa counts every arrival, own tiles included** (HR-2 0/10 after Addis, its own hub). Plan the last visa hops onto the tiles that would otherwise charge.

[L] **Cabs chain only to the ~7 nearest cities** — Mwanza does not connect to Dar or Arusha; routing inside a country can need a hub-city bounce (Dodoma). Read `look_around` before assuming a set is a straight line.

[H] **Klappy:** Tokyo · cash M$24,687 · NW M$32,387 · #1 · contracts 0/3 left alone (travel = card risk > reward at 36 levels; rent contract uncontrollable; nothing to build). Salary caps 23:52Z. P8 sample 4 not taken this session.
[H] **HR:** Harare · cash M$1,270 · 11/12 · 4 sets all L3 · Nairobi hub · 1 slot · streak 🔥1 · nothing claimable for one slot except a single; next: salary, keep the streak with one cheap own-tile hop only if a contract pays for it.
[H] **HR-2:** Dar es Salaam · cash M$398 · **12/12** · Tanzania L1 → L2/L3 needs M$350/level (build from salary, in Tanzania, hold M$300) · 2/4 airports · streak 🔥1 · **city-locked: Homestead mode flips to receiver once Tanzania is L3.**

🏁 Halt reported and cleared. New baseline recorded. No operator notice on any seat.
