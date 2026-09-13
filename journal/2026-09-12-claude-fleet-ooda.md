# Agentopoly — DOLCHEO Journal — 2026-09-12 — Claude (chat) — Klappy · HomestarRunner · HomestarRunner-2 — OODA wake

Format: `[TYPE] title — body`. D decision · O observation · L learning · C constraint · H handoff · O-open Pn.

`oddkit_time` **2026-09-12T12:31Z** (23h53m since last wake). Flagship via connector; Homesteads via raw MCP (tokens per captain override 09-08, never echoed). `docs/ROUND-ONE.md` + yesterday's journal merged first — PR #40, squash `0c5cba2`.

## Flight log (UTC)
| Time | Seat | Action | Receipt |
|---|---|---|---|
| 12:33 | Klappy | `status` / `collect_salary` | +M$1,200 (cap). No rent, no fees in 24h. 12/12 · 4/4 |
| 12:34 | Klappy | ✈ Mumbai → Tokyo (own, M$107) | 📋 Travel 600 km +M$100 · 🃏 Tip Jar +M$50 · 🔥 Day 2. Cash **M$28,766** · NW M$36,466 · #1 |
| 12:35 | HR | `notifications` / `collect_salary` | 📭 nothing; +M$1,200 → M$5,113. Rent in 24h: **M$0** |
| 12:35 | HR-2 | `notifications` / `collect_salary` | 📭 nothing; +M$1,200 → M$3,273. Rent in 24h: **M$0** |
| 12:36 | HR-2 | ✈ Dar es Salaam → Addis Ababa (own hub, M$58) | 📋 Land at a hub +M$75 · 🃏 Pickpocketed −M$100 · 🃏 daily card First-Class Upgrade (+3 energy, next fare free) · 🔥 Day 3. Cash **M$3,190** · NW M$8,633 · #13 |
| 12:36 | HR | 🚕 Lusaka → Victoria Falls (own, M$25) | 🃏 Pickpocketed −M$100 · 🃏 Tip Jar +M$50 · 🔥 Day 3. Cash **M$5,038** · NW M$9,013 · #12 |
| 12:37 | — | `activity limit=50` | No NPC events. Non-fleet movement: none. Fleet: Completo (Grokbot) active in Asia — see [O-open] |

## Artifacts

[O] **Traffic tripwire: still dark.** Second consecutive 24h window with zero rent on all three seats and no NPC event in `activity`. Salary + contracts + cards remain the entire live economy. Homestead v1 rent metric stays expired (see `docs/ROUND-ONE.md` §4).

[O-open P1] **Completo (Grokbot fleet) paid LVJ M$200 airport fees twice in 15 minutes** (Singapore via Diverted Flight, then Hong Kong by choice) plus M$48 rent, then bought Shenzhen M$400 (China — set size unverified, likely a trap). Directive §3 says let expire anything needing a landing on a rival L3/hub tile while loaded; §1 says verify `x/N`. ~M$650 out in one wake, ~M$450 of it to the largest rival. Grokbot's head should see this.

[O] Two seats drew Pickpocketed back-to-back on their first arrival of the day (−M$100 each). Cards are per-arrival; the daily card still fired on the same landing. Net for the streak moves: Klappy +M$43, HR-2 −M$83 (+3 energy + a free fare held), HR −M$75.

[D] Locked seats keep the streak with exactly one move onto their own tiles, taking only the contract that move drops (Klappy 600 km; HR-2 hub landing). No own-tile loops (directive §3, receiver seats).

[H] **Klappy** — Tokyo · M$28,766 · NW M$36,466 · #1 · 12/12 · 4/4 · 🔥2 · 1/3 (remaining: spend M$500, buy-out — both let expire) · salary caps 23:52Z.
[H] **HR** — Victoria Falls · M$5,038 · NW M$9,013 · #12 · 11/12 · 1/4 · 🔥3 · 0/3 (event-card M$100, rent M$40, hub landing — none reachable cheaply from Lusaka/Zimbabwe cab-only cluster) · salary caps 23:45Z.
[H] **HR-2** — Addis Ababa · M$3,190 · NW M$8,633 · #13 · 12/12 · 2/4 · 🔥3 · 1/3 · free fare voucher held · salary caps 00:01Z.

[C] **Cadence ruling requested (captain, 2026-09-12): run this loop every 4–8h.** Chat cannot schedule; a recurring Cowork task in this project can (that is how the 09-07 runner flew). Proposed shape: every 6h ±jitter — salary never caps (12h), three touches a day cover all contract windows, and the fleet footprint stays at ~4 wakes/seat/day instead of 24.

🏁 No halt on any seat. No operator notice. Rules hash not re-checked this wake (carried gap).

---

## Wake 2 — 12:43–12:48Z — no-move wake

`oddkit_time` **2026-09-12T12:43:21Z** (11m after wake 1). Boarded `klappy://canon/bootstrap/model-operating-contract`; re-read `fleet/DIRECTIVE-2026-09-10.md`, `skills/references/halt.md` and wake 1 above before any tool call. Flagship via connector; Homesteads via raw MCP.

### Flight log (UTC)
| Time | Seat | Action | Receipt |
|---|---|---|---|
| 12:44 | HR | `notifications` | 📭 nothing. 🔥 Day 3 **✅ counted today** · M$5,038 · NW M$8,938 · #12 |
| 12:45 | Klappy | `notifications` | 📭 nothing. 🔥 Day 2 **✅ counted today** · M$28,766 · NW M$36,466 · #1 · 1/3 |
| 12:45 | HR-2 | `notifications` | 📭 nothing. 🔥 Day 3 **✅ counted today** · M$3,190 · NW M$8,550 · #13 · 1/3 |
| 12:45 | HR | `collect_salary` | +M$100 → M$5,138. Caps 00:45Z |
| 12:45 | HR-2 | `collect_salary` | "No salary to collect yet" (collected 12:35Z). Caps 00:01Z |
| 12:46 | Klappy | `collect_salary` | "No salary to collect yet" (collected 12:33Z). Caps 23:52Z |
| 12:47 | Klappy | `status` | Tokyo · 12/12 · 4/4 · all four sets L3 · NW M$36,466 · #1 |
| 12:47 | HR | `status` | Victoria Falls · 11/12 · 1/4 · KE/MW/MZ/ZW all L3 · NW M$9,038 |
| 12:47 | HR-2 | `status` | Addis Ababa · 12/12 · 2/4 · ET/SA/SD/**TZ** all L3 · NW M$8,550 · 🎫 free fare held |
| 12:47 | HR | `rules` → sha256 | strip-only `3d978ac96da2` — **MATCH** baseline |

**Moves made: none.** Streak was already counted on all three seats before this wake opened.

## Artifacts

[O] **Second wake of the day, ~11 minutes after the first.** All three Claude seats already had today's streak counted (Klappy Day 2 ✅, HR Day 3 ✅, HR-2 Day 3 ✅), so the conditional streak move was correctly not taken on any seat. Salary: HR +M$100, HR-2 none (collected 12:35Z), Klappy none (collected 12:33Z). No notifications on any seat — third consecutive window with zero rent, zero fees, zero buyouts.

[D] **No move on any seat this wake.** Directive §3 says a locked/receiver seat keeps its streak with one action and leaves; the streak was already counted, so a second arrival would be own-tile loop traffic — the exact pattern §7 flags as patchable. Klappy's two open contracts (spend M$500 on property/building, buy out a rival's city) both let expire: no purchases outside a proven set, no buyouts.

[O] **Unexplained net-worth drift with cash unchanged.** HR NW M$9,013 (12:36Z, wake 1) → M$8,938 (12:44Z), cash M$5,038 both times (−M$75). HR-2 NW M$8,633 → M$8,550, cash M$3,190 both times (−M$83). No city or airport missing on either seat (HR 11/12 + 1/4, HR-2 12/12 + 2/4), so this is **not** the halt-list signal "own seat missing a city or airport it held" — but property valuation moving without a transaction is new and unreceipted. Watch it next wake; if NW keeps sliding with no transaction, it becomes a halt-class unknown.

[O] **HR-2 Tanzania is now L3 across all five cities** (Dar es Salaam M$960, Mwanza M$640, Zanzibar City / Dodoma / Arusha M$400). Directive §4 listed "Tanzania L2/L3 from salary, then hubs" as HR-2's open objective; **it is closed**. HR-2 is 12/12 cities, every set L3, 2/4 airports — next objective is hubs only.

[C] **Rules hash re-checked: `3d978ac96da2` strip-normalized, MATCH.** Directive §5 baseline holds; the carried gap from wake 1 ("rules hash not re-checked this wake") is closed. The constraint stands: no seat acts on a wake where the strip-normalized hash mismatches — recompute once, then hard-halt.

[O-open P1] **Cadence still unmechanised.** Two Claude fleet wakes landed 11 minutes apart on a board where nothing moved — the synchronised-play pattern directive §4 was written against, produced by chat-initiated wakes with no shared clock. The captain's 4–8h ruling (wake 1, `[C]`) still has no scheduler attached. Until it does, every chat kickoff should read this journal's last wake time first and stand down if it is under 4h old.

[H] **Klappy** — Tokyo · M$28,766 · NW M$36,466 · #1 · 12/12 · 4/4 · 🔥2 ✅ · 1/3 (both remaining let expire) · salary caps 23:52Z.
[H] **HR** — Victoria Falls · M$5,138 · NW M$9,038 · #12 · 11/12 · 1/4 · 🔥3 ✅ · 0/3 (event-card M$100, rent M$40, hub landing — none reachable from the Zimbabwe cab-only cluster) · salary caps 00:45Z.
[H] **HR-2** — Addis Ababa · M$3,190 · NW M$8,550 · #13 · 12/12 · 2/4 · 🔥3 ✅ · 1/3 · 🎫 free fare held · salary caps 00:01Z. Tanzania closed; hubs are the only open §1 step.

🏁 No halt on any seat. No operator notice. Rules hash verified this wake.
