# Agentopoly — DOLCHEO Journal — 2026-09-14 — Claude (chat) — Klappy · HomestarRunner · HomestarRunner-2 — OODA wake 1

Format: `[TYPE] title — body`. D decision · O observation · L learning · C constraint · H handoff · O-open Pn.

`oddkit_time` **2026-09-14T21:41:52Z** — 32h since the last fleet wake (09-13 13:1xZ). Boarded `klappy://canon/bootstrap/model-operating-contract` (g2g9x3) via the oddkit connector; read `docs/first-officer-patterns.md`, `docs/fleet-ooda-bootstrap.md`, the 09-13 journal, and `skills/references/config.md` fresh from main `61e9f74`. Gates: G1 canon ✅ connector · G2 repo write — see the `[O]` at the bottom · G3 seats ✅ (Klappy via connector; Homesteads via raw MCP with the project token files, never echoed; python `urllib` got a Cloudflare 403 until a User-Agent was set — curl was fine).

**Call zero:** strip-only sha256 of the raw `rules` text on HomestarRunner = **`63c31c7cfa27` — MATCH.** No halt.

## Flight log (UTC)
| Time | Seat | Action | Receipt |
|---|---|---|---|
| 21:43 | Klappy | `notifications` | League wk 2957: **#12/13, −M$4,482** (stayed). Ruled 4 countries. Cash M$24,504 (−M$320 since 09-13 — matches a café opened in Montevideo, M$160 city → M$320) · NW M$32,524 · #1 · 🔥3 at risk · 0/3 |
| 21:44 | Klappy | `collect_salary` | +M$318 (M$18 streak) — **25% rate, M$900 forgone, "cash above M$6,000"** (line was M$3,600 on 09-13). Caps 08:52Z |
| 21:44 | Klappy | `status detail=full` | Montevideo · 12 cities (11/16 bank) · 4 airports (4/5) · four sets L3 · NW M$32,842 |
| 21:45 | Klappy | `venture collect` | **+M$230** from the Montevideo ☕ Café (was stale/raidable). Refills +M$19/h, stale in 6h |
| 21:45 | Klappy | 🚕 Montevideo → Punta del Este (own, M$14) | 🔥 **Day 4** · 🃏 Tip Jar +M$50. Cash **M$25,088** · NW M$33,108 |
| 21:46 | Klappy | `leaderboard` full | #1 NW M$33,108 · **#2 LVJ M$28,930 — M$4,178 behind** (was M$13,863 on 09-13) · Otto M$25,961 · Shalini M$22,297 · digyvijay 17 cities / **6 sets** / 5 airports · 198 players |
| 21:47 | HR | `notifications` | **+M$990 while away: digyvijay paid M$960 rent + M$30 fee at Nairobi.** Landlord I +M$50, II +M$100. League #10/13 −M$568. 🔥 **broken** (best 3). 0/3 |
| 21:47 | HR | `collect_salary` | **+M$1,200 full rate at M$4,670 cash** (above the old M$3,600 line — the line moved). Cash M$5,870 · caps 08:45Z |
| 21:47 | HR | `status` | Victoria Falls · 11 cities (11/16) · 1 airport (1/5) · KE/MW/MZ/ZW all L3 · quests 0/4 (M$3,500 untouched, doctrine) |
| 21:48 | HR | 🚕 Victoria Falls → Harare (own, M$32) | 🔥 new streak day 1 · 🃏 Lost Wallet +M$150. Cash **M$5,988** · NW M$9,888 |
| 21:49 | HR-2 | `notifications` | **+M$1,020 while away: digyvijay paid M$960 rent + M$60 fee at Addis Ababa.** Landlord I/II +M$150. League #9/13 −M$208. 🔥 broken. 0/3 |
| 21:49 | HR-2 | `collect_salary` | +M$1,200 full. Cash M$4,382 · caps 09:01Z |
| 21:49 | HR-2 | `status` | Addis Ababa · 12 cities (10/16 bank + 2 taken) · 2 airports (2/5) · ET/SA/SD/TZ all L3 + Mogadishu · 🎫 voucher held |
| 21:50 | HR-2 | ✈ Addis Ababa → Dar es Salaam (own hub, **free with voucher**) | 🔥 day 1 · 📋 Travel 600 km +M$100 · 🃏 Tip Jar +M$50 · **#13 → #12** (overtook HR). Cash **M$4,532** · NW M$9,892 |
| 21:51 | — | `activity limit=50` · `leaderboard rent_week` · `jobs` | See Orient. Rent this week: Klappy M$31,388 · Otto M$19,660 · LVJ M$10,536 |

## Orient

[O] **Traffic tripwire has flipped: both Homesteads collected their first real rent.** digyvijay landed on Nairobi (M$960 + M$30) and Addis Ababa (M$960 + M$60) inside the same 32h. That is M$2,010 of stranger rent on Homestead L3 tiles — the Homestead v1 rent metric is measurable for the first time since 09-08. Same player also bought out Denver from Adi (M$320) and is on 6 sets / 17 cities / 5 airports: digyvijay is the most active buyer on the board this window.

[O] **Means-test line moved M$3,600 → M$6,000.** Klappy's salary message now reads "cash above M$6,000"; HomestarRunner was paid 100% at M$4,670 (would have been ~57% under the 09-13 line). The `rules` text hash still matches — **the short rules text does not carry the means-test line**, so the hash is not a tripwire for this class of change. Plate: read the salary receipt's stated line every wake and journal it when it moves.

[O] **Flagship guard: gap to LVJ shrank M$13,863 → M$4,178 in 32h.** LVJ +M$5,887 NW (rent M$10.5k this week, cab company in Dubai, 5 sets / 5 airports); Klappy −M$3,798 (reset cycle −M$2,194 + Landlord licence −M$2,500, minus income). Not a halt (> M$1,800) but at this slope LVJ passes inside ~24h. Priced answers are in Decide.

[O] **The 32h gap cost more than anything a rival did.** Salary banks 12 intervals; every seat sat at cap for ~20h → ~M$2,000 forfeited per Homestead, ~M$500 at Klappy's 25% rate, plus **both Homestead streaks reset** (Day 3 → 0) and Klappy's Day 3 was at risk. ~M$4.5k of avoidable loss. The scheduler is still the constraint (pattern rows 8/11).

[O] Klappy idle-cash tax is now the biggest recurring leak: M$25,088 cash, M$19k above the line, salary at 25% = M$900 forgone per 12h cap. A Montevideo café (M$320) already exists and paid M$230 on first collect; its till goes stale in 6h and is raidable while stale.

[O] India is filling: Abhi (Bengaluru + airport, Coimbatore) and MIG (Indore, Bhopal) both boarded in the last 7h. Klappy's Mumbai hub sits in the middle of it; no fee yet this window.

[O] HomestarRunner stands one cab from **Zambia** — Lusaka M$160, Kitwe M$100, Ndola M$100, all for sale, proven 3 (09-08 scout). Claim M$360 + fares ~M$95, then L3 at 3 × M$180 = M$540 → rents M$640/400/400. HR has 5 open city slots and M$5,988 cash. Johannesburg hub (M$400, unowned) is 2 cab hops away for the airport slots.

[O] Jobs on Klappy: Grand tour (3 countries, +M$500 + crate, 3d) and Jetsetter (5,000 km, +M$400 + crate, 3d) are both completable entirely on own hubs — Buenos Aires → Mexico City → Tokyo is 3 countries and ~19,000 km. Courier to Bangkok is LVJ's L3 — skip.

[D] One streak move per seat onto own tiles only; Klappy's open contracts (buy a 1M+ city, new country) let expire — no purchases outside a proven set on a scheduled-shape wake. No buyouts, no land sold, no rival tiles.

[C] Cadence: with no scheduler, any manual wake ≥12h after the last forfeits salary on all three seats. Until the Cowork tasks fly, the captain's two-a-day manual wakes (≈09:00Z and ≈21:00Z) are the floor.

## Decide — proposals for the captain, priced
1. **Deploy Klappy's idle cash (stop the 25% salary).** Cheapest NW-neutral unlock: cafés/cab companies on own L3 cities (M$320–800 each, +M$12–29/h till, collect when standing there) — but a till only pays when the seat is present, and ours visits rarely. Better: **Tycoon licence M$6,000 (20/6)** then a fifth set + fifth hub (~M$1.5–2.5k), which also answers LVJ's 5/5. Licence is NW-negative; land is NW-neutral and rent-positive. Total ~M$8.5k → cash ~M$16.5k, still above M$6,000, so the salary rate only partly recovers.
2. **HomestarRunner claims Zambia** (M$360 now, M$540 to L3 from salary) — first slot fill under Landlord, inside doctrine, one cab away.
3. **Klappy accepts Grand tour + Jetsetter** and flies them one own-hub hop per wake (BA → Mexico City → Tokyo): +M$900 + 2 crates (a crate can hold a deed ticket = free city) for ~M$450 in fares over three wakes. Needs three wakes inside 3 days — only worth it if the cadence holds.
4. **HR-2:** `city_info` Saudi Arabia / Sudan next wake for an unowned hub inside an owned set (2/5 airports); otherwise Johannesburg or Lagos at list M$400.

[H] **Klappy** — Punta del Este · M$25,088 · NW M$33,108 · #1 (LVJ −M$4,178) · 12/16 · 4/5 · 🔥4 ✅ · 1/3 · salary caps 08:52Z · café till stale ~03:45Z.
[H] **HR** (HomestarRunner) — Harare · M$5,988 · NW M$9,888 · #13 · 11/16 · 1/5 · 🔥1 ✅ · 0/3 · caps 08:45Z.
[H] **HR-2** (HomestarRunner-2) — Dar es Salaam · M$4,532 · NW M$9,892 · #12 · 12 (10/16 bank) · 2/5 · 🔥1 ✅ · 1/3 · voucher spent · caps 09:01Z.

🏁 No halt on any seat. No operator notice. Rules hash verified. Flagship guard clear (M$4,178 > M$1,800) but closing fast.
