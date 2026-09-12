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
