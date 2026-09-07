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
| Airport | M$200 list; fee per landing M$50 on ours (M$25 shown once, M$200 on Xaros's — *rule unknown*) |
| Buyout | always **2× list**, paid to owner; owner nets +1× list; sets are immune, airports are not |
| Sell to bank | 50% of list |
| Home city | fixed after first move (Homesick card teleports you there) |

### 1.3 Movement
- Cabs: neighbouring cities, ~M$15–70, 1 energy.
- Flights: **hub-to-hub only**, ~M$50–180. Every flight lands on an airport → hubs are chokepoints.
- `city_info` finds cities by name; country lookups return **at most 5 cities** (see `docs/strategy.md` §3.4).

### 1.4 Milestones (one-time cash)
First Property +50 · Wanderer (first move) +25 · **First Conquest +150** (first set only — no second-set bonus) · **Tycoon +75** (first build) · Share card on X +1,000 · Follow on X +500 · Invite a friend +500 (on their first set).

### 1.5 Event cards seen
Consular Fees −M$25 per city held (airports exempt) · Tourism Board Grant +200 · Homesick (teleport home) · energy ±.

---

