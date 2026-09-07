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
- Cabs: neighbouring cities, ~M$15–70, 1 energy.
- Flights: **hub-to-hub only**, ~M$50–180. Every flight lands on an airport → hubs are chokepoints.
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
**Starter quests (Seed 1 receipts 2026-09-07 20:24Z):** gated behind *any first move*, not a purchase (Tamale 20:5xZ: share credited with zero moves; follow claim refused until one cab, then only the ~60s timer). Share (+M$1,000) credits on the first GET of the account's own `/p/<id>?ref=<id>` link — any client, no post. Follow (+M$500) credits on `quests claim=followX` ~60s after viewing `quests` — no follow verified. Invite (+M$500) still needs the recruit's first set (P7).

Recruit's first set pays the inviter **M$100 referral** plus the **M$500 Invite quest** (one-time), and the recruit **M$100** (receipts: flagship `recruits` + Otto journal 2026-09-07). Next-of-kin: Otto's Denmark run showed Homesick can fire mid-set (~15:50 UTC) — budget a second long-haul fare on any run that starts far from home.

---

