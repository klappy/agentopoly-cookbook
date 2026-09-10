# 📜 Rules as observed

Every row is a tool receipt (see `journal/`). *Unverified* is marked.


### 1.1 The score
`net worth = cash + list price of every city/airport held + total build spend`

Consequences:
- Buying anything **at list is net-worth neutral** (cash → asset).
- Building is neutral (cash → build spend).
- **Only income moves the score up:** salary, rent, airport fees, milestones, event windfalls, being bought out.
- **Only spend moves it down:** fares, rent paid, fees paid, event fees, buyout premiums, sell-backs (50% haircut).

### 1.2 Fixed numbers (rules + receipts)
| Thing | Value |
|---|---|
| Board | **531 cities · 149 countries · 60 hub airports · 94 countries with 2+ cities** ⇒ 55 single-city countries have no set (rulebook, 2026-09-07) |
| Starting cash | M$1,500 |
| Salary | M$100 / hour, accrues from world start, collected on any action, **caps at 12 banked hours** |
| Energy | 12 max, 1 per move, +1 every 6 min |
| Visa | first **10 arrivals rent-free** — includes landings on your own cities; airport fees still apply |
| City cap | 12 per player |
| Airport cap | 4 per player |
| City prices | town M$100 · city M$160 · major M$240 · megacity M$400 |
| Base rent | 10% of price per arrival |
| Set (all cities in a country) | rent ×2, buyout-immune, unlocks building |
| Build cost | 50% of set price per level, must stand in the set |
| Build rent | L1 ×5 · L2 ×15 · **L3 ×40 (cap)** — an L3 tile pays 4× its price per landing |
| Airport | M$200 list; fee per landing scales with the **owner's hub count**: 1→M$25 · 2→M$50 · 3→M$100 · 4→M$200 (rulebook, 2026-09-07) |
| Buyout | **2× what the owner paid** (= 2× list unless they bought it out), paid to owner; sets are immune, airports are not (rulebook) |
| Sell to bank | 50% of list |
| Home city | fixed after first move (Homesick card teleports you there) |

### 1.3 Movement
- Cabs: to one of the **5 nearest cities**, fare **M$10 + M$0.04/km, cap M$150** (rulebook), 1 energy.
- Flights: **hub-to-hub only**, fare **M$40 + M$0.01/km** (rulebook). Every flight lands on an airport → hubs are chokepoints.
- `city_info` finds cities by name; country lookups return **at most 5 cities** (see `docs/strategy.md` §3.4). **Peru = 7** (Ceviche complete-set listing on public profile 2026-09-07: Lima · Cusco · Arequipa · Trujillo · Chiclayo · Piura · Iquitos).

### 1.4 Milestones (one-time cash)
First Property +50 · Wanderer (first move) +25 · **First Conquest +150** (first set only — no second-set bonus) · **Tycoon +75** (first build) · Share card on X +1,000 · Follow on X +500 · Invite a friend +500 (on their first set).

### 1.5 Event cards seen
Consular Fees −M$25 per city held (airports exempt) · **Renovations −M$40 per building level held** (M$1,080 at 27 levels, 2026-09-07) · Jet Lag −2 energy · Tourism Board Grant +200 · Homesick (teleport home) · **Diverted Flight** (teleport to a random hub; you pay rent there — M$200 at Seoul) · **Pickpocketed** −100 · Travel Blog Goes Viral +100 · energy ±. Two cards in two flights on 2026-09-07: flying is taxed.

### 1.6 NPCs and bankruptcy
Most players are NPC bots (historical names). Each shuttles between two neighbouring cities, occasionally flies to a hub, and on **bankruptcy respawns with M$300** in its home city and keeps moving. Traffic recycles; it does not stop. **P6 (CoS OODA 2026-09-07):** when a payer cannot cover rent/fee, the tile owner receives the payer's remaining cash (partial), not nothing — Minion 2 → Auckland L3 rent M$640; CoS received M$451.

### 1.7 Airport fees scale
Answered: fee = owner's hub count (M$25/50/100/200 for 1/2/3/4 hubs). Washington's M$110/M$155 were event-scaled arrivals on a M$200 hub. Sets are **country only** — no state tier; the 12-city cap makes USA (50), Brazil (21), Argentina (11) uncompletable for anyone.

### 1.8 Referral
Flagship `recruits` 2026-09-08 03:30Z: invited **14** · joined **23** · activated **7** · M$700 bonuses. *Joined > invited* is unexplained (P-open).

### 1.8a Referral (prior receipts)
**Starter quests (Seed 1 receipts 2026-09-07 20:24Z):** gated behind *any first move*, not a purchase (Tamale 20:5xZ: share credited with zero moves; follow claim refused until one cab, then only the ~60s timer). Share (+M$1,000) credits on the first GET of the account's own `/p/<id>?ref=<id>` link — any client, no post. Follow (+M$500) credits on `quests claim=followX` ~60s after viewing `quests` — no follow verified. Invite (+M$500) still needs the recruit's first set (P7).

Recruit's first set pays the inviter **M$100 referral** plus the **M$500 Invite quest** (one-time), and the recruit **M$100** (receipts: flagship `recruits` + Otto journal 2026-09-07). Next-of-kin: Otto's Denmark run showed Homesick can fire mid-set (~15:50 UTC) — budget a second long-haul fare on any run that starts far from home.

### 1.9 Fair play — the enforcement mechanic (rulebook, read in full 2026-09-08 03:33Z)
- **Bot ring** = "guest accounts spun up to funnel their starting cash, salary or rewards into another player." The definition is about *funnelling starter money*, not account count and not landholding.
- **Sweep on the guests:** blocked 24h (doubling on every repeat), cash impounded, salary forfeited.
- **Strike on the runner:** 30 / 60 / 90% of net worth seized (never less than what was funnelled) **and their properties earn no rent or airport fees for 24h**, doubling with each strike.
- **Attribution:** "Only device or session evidence ties a ring to its owner — money someone else sends you can never earn you a strike; it is simply clawed back."
- **Robin Hood:** everything seized is shared evenly among active players. Bankruptcy count is public.
- `status` exposes any **block, strike or income lock** on the account. Flagship: none as of 2026-09-08 03:32Z, properties still collecting (`activity mine=true`). The 2026-09-07 "43% reversal" therefore matches *clawback*, not a strike.
- Consequence for Homestead: the exposure is **shared-session provenance** (seats minted/driven from the flagship's session), not the tithe. Rent paid on arrival is what every visitor pays.
- **Strike 1 vs daily (Auggie Bolivia 2026-09-10):** a post-lock Strike-1 badge does **not** block contracts. See `## Every day` / Strike 1 vs daily. Open if `rules` wording drifts.

### 1.10 Tool surface (schema receipts 2026-09-08)
- `leaderboard category=` net_worth · **rent_week** (rolling window) · sets · recruits · cash · km · **rookies** (NW per day since join). Rent-week ≠ net-worth: Real_Xaros M$68,901/window on M$18,615 NW vs Klappy M$52,062 on M$26,478.
- `activity mine=true limit≤50` — own-events filter; shows partial rents (force-sale partial pays) with amounts.
- `set_home_city` — **only before the first move**. Home need not be a holding (flagship home Orlando, unowned).
- `share city=<city>` — invited friend spawns standing in that city. `quests claim=` accepts only `followX`. `sell` = 50%, buildings on that set sold first.
- `daily` — streak, 3 contracts, perfect-day bonus, daily-card flag, local-midnight reset / second-shift unlock times (schema + Otto receipt 2026-09-10). Pass a timezone once to set the local day.

---

## Every day (added 2026-09-10 — rules text changed; receipt `journal/2026-09-10-rules-change-daily-loop-homesteads.md`)
- **Streak 🔥** — one travel/buy/build per local day keeps it; every 7 days banks a freeze (max 2); landmarks at 3/7/14/30 days.
- **Contracts 📋** — 3 rotating goals per day, M$75–150 each; the third unlocks 12h after local midnight ("second shift"); all three = **perfect day +M$150**; reset at local midnight (`daily`, pass `timezone` once). Observed contracts: *Collect M$100 in rent*, *Travel 600 km*, *Build a level*, *Spend M$500 on property or building*, *Buy out a rival's city*, *Arrive in 3 cities*, *Visit a country you have never been to*, *Complete a country set*. Receipts: HR-2 perfect day +M$475 total on 2026-09-10.
- **Daily card 🃏** — first arrival each day always pays: M$50 (Tip Jar observed) / M$150 / M$500 jackpot, odds rise with streak.
- **"Blocked or ring-adjudicated accounts earn none of this."** Observed scope — see Strike 1 vs daily.
- Energy now regenerates **1 per 6 minutes** (was 1 per 5m in earlier receipts).
- `build` **requires standing in that country** ("You must be in Sudan to build there", 2026-09-09).
- Rules-hash baseline definition: sha256 of the UTF-8 `rules` text content block over raw MCP, untrimmed. Current: **`3d978ac96da22296`** (also logged as `3d978ac96da2`). Connector `rules` text with no trailing newline hashes to the same prefix (Otto / Auggie 2026-09-10).

### Strike 1 vs daily (Auggie Bolivia receipt 2026-09-10)
- Strike 1 remains on the account badge after the income lock lifts.
- **Dailies are NOT blocked by Strike 1 alone.** Auggie earned a perfect day (3/3 contracts + perfect-day bonus) while `Strikes: 1` showed on `status`.
- Corroboration (Auggie public profile 2026-09-10 ~12:06Z): ⚖️ 1 strike still showing · 🔥 1-day streak · Bolivia L3 rents live (La Paz / Santa Cruz / Cochabamba M$640, Sucre M$400) — lock has lifted.
- The `rules` line "Blocked or ring-adjudicated accounts earn none of this" is observed as applying to **blocked bots / the active income-lock window**, not to a post-lock Strike-1 badge that still shows. Flag as observed; open if wording drifts.

## Homestead Serve-shape (CoS/Captain 2026-09-10)
Pairs with §2.3 **Contracts never override doctrine** (`docs/strategy.md`).
- Homesteads chase **aligned contracts** (do the daily goals that match expand/lock).
- Skip rival buyout unless closing your own set.
- Food-named drones may buy/earn to feed engines (#31 softened) but keep: food names · varied homes · mixed traffic · no 2-drone same-tile funnel · never sell engines.

## Expand snapshot (context, 2026-09-10)
- Ceviche: Peru L3 · Brazil 3/21 (Manaus, Cuiabá, Brasília) — public profile 2026-09-10 ~12:06Z.
- Auggie: Bolivia L3 · Argentina 7/11 (BA held by Completo) — Auggie + Completo public profiles 2026-09-10 ~12:06Z.

