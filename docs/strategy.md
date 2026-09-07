# 🧠 Strategy — reverse-engineered from the board


### 2.1 The stack that earns
Income concentrates where three things sit on one tile:
1. **Airport** — fee from every flight, visa or not.
2. **Complete set** — rent ×2 and buyout-immune.
3. **L3 build** — rent ×40.

Mexico City (megacity, hub, L3) = **M$50 fee + M$1,600 rent per landing.** One night of Mexico at L1 collected M$1,977 — more than 12 hours of salary.

### 2.2 Phases
| Board | What pays | Play |
|---|---|---|
| Empty (< 30 players, no flights) | salary + milestones | Grab scarce assets (unowned hubs, cheap sets) *now*; they don't come back. Claim every milestone. |
| Filling (30–100) | rent at gateways and dense regions | Build to L3 immediately (neutral, cap is cheap). Own the airport inside your set. |
| Dense (100+) | traffic × price | Cluster: own the front door (hub) and the rooms behind it (cab-adjacent L3 cities). |

### 2.3 Standing rulings (captain, in force)
- **Scarce before safe.** Cash refills at M$100/h; an unowned hub does not.
- **Cluster where the NPCs are, don't spread.** (OODA'd 2026-09-07 — was "Americas only".) Contiguous, cab-adjacent tiles in a region where `activity` shows NPCs shuttling. The flagship's cluster is the Americas; a sub-account's cluster is wherever its NPC-dense set already is (Otto: Denmark). Every engine tithes to the flagship regardless of continent.
- **Hold nothing that doesn't earn.** Sell-back haircut (M$80–120) < one L3 landing (M$400–1,600).
- **Fleet doctrine — Theory of Constraints (captain ruling 2026-09-07 18:3xZ):** the constraint is the **count of L3 engines**, not flagship cash. Cash is what unlocks L3, so money flows *upstream in tiers*: Minions (zero holdings, salary + respawn faucets) pay rent into engines → engines rush every held set to L3 → an engine at 12/12 (or out of proven sets) flips to **tithe** and pays the flagship. Fill each engine until **all its holdings are complete sets at L3** (buyout-immune) and it holds **4 strategic hubs** (fee scales with hub count: M$25/50/100/200). Only then is it an engine. A minion landing on an L0 tile is wasted money; route drones to the engine that is closest to its next L3.
- **Never pay a buyout** — default. −1× list for you, +1× for a rival. Welcome anyone who buys ours.
  - *Exception ruled 2026-09-07 (Vancouver):* a buyout is allowed to **close a set we already hold ≥1/N of**, from a single-holder with no set, at 2× a *city* price. M$320 unlocked Canada L3 (M$2,560 per full-set visit) and buyout immunity on all three tiles. Airport buyouts stay endgame-only.
- **Own the city under your hub only if it is in a built set.** Hub + L3 city is the stack (Mexico City: M$200 + M$1,600). Hub + uncompletable single is M$200 + M$40 — keep it while the slot is free, sell it when a set needs the slot. Never buy out Miami-class US singles for M$40 a landing.
- **Big countries are bait.** Sets are country-only and the cap is 12: USA 50 / Brazil 21 / Argentina 11 / Chile 7 cannot be completed. Only countries proven ≤5 are targets (Recipe 04).
- **Corridor ruling (2026-09-07): best open set beats the corridor.** Captain ruled Japan over the Americas ("prevent somebody else from blocking us"). Flagship now holds Mexico · Uruguay · Canada · Japan — four proven 3-sets, each with or near a hub. Slots are full; the next move is building, not buying.
- **Flights are taxed by your own buildings.** Renovations = M$40 × building levels held (M$1,080 at 27 levels). Once an account is multi-L3, budget every flight at fare + ~M$300 expected card cost and prefer cabs. Do not fly the flagship with < M$1,200 cash.
- **Unowned airports at list only.** Prefer megacity gateways (M$50 fees).
- **Check in every ≤12h** — any action banks salary; the cap is the only way to lose it.
- **Empty hubs now, buyout war later** (ruled 2026-09-07): buy unowned airports at list; the airport buyout war on rival toll-booths (Washington etc., where NPCs bankrupt on M$110–155 fees) is an **endgame** play for when few cashflow opportunities remain. Not yet.
- **Each account is its own engine.** No money transfers between accounts; alts can't fund the flagship. They can each become a flagship, and deny rivals the continent.


## 3. Lessons learned (each with the receipt that taught it)

### 3.1 Salary discipline is the floor, not the game
Hypothesis at hour 2: "idle and bank salary." Rejected at hour 30: Mexico L1 collected M$1,977 overnight vs M$1,200 salary. Rent scales with players; salary doesn't.

### 3.2 Scarce before safe
Held M$582 in Toronto, ruled "wait for cash" on the M$200 unowned airport. flujo bought it within hours. The captain's land-grab instinct was right on Miami hub, Mexico City hub, and Mexico set; my cash-floor caution was wrong every time it was tested.

### 3.3 Build immediately
Building is neutral to net worth. The only reason to wait is cash for event fees — and the fee is M$25/city. L1→L3 on Mexico cost M$1,200 total and turned M$40 landings into M$1,600.

### 3.4 `city_info` hides big countries (C — MUST verify)
It returns at most 5 cities. Mexico showed 3 (true). Argentina showed 5 — **actually 11**, uncompletable; we found out from the "1/11" buy receipt. Rule: **only trust set sizes under 5; verify from the first buy's x/N before committing.** Chile, Peru, Portugal each showed exactly 5 → unknown.

### 3.5 Visas burn on your own cities
All 10 rent-free arrivals were used, several landing on tiles we already owned. Spend them on paid territory.

### 3.6 Homesick is a real cost
Flew Mexico City → Buenos Aires (M$114), got Homesick, teleported to Orlando, re-flew (M$134). Home can't be changed after move one. New agents: pick home = the megacity hub you intend to build.

### 3.7 Alt accounts
Rent from your own alt is money moving between pockets; fares go to the bank. Net negative. Xaros does it at scale; it inflates rank, not real income.

---

