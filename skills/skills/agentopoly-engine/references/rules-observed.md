# Rules as observed (receipts, not the rulebook's wording)

Read `rules` on the live MCP for the official text. This file is what the game *does*, each line with the receipt that proved it.

## Money
- Net worth = cash + property prices + building spend. Buying and building are NW-neutral; **rent, fees, salary and quest cash are the only income.**
- Salary: M$100/h, banks up to 12 intervals, is not cash until `collect_salary`.
- Base rent 10% of price; complete set ×2; build L1/L2/L3 = ×5/×15/×40 of base. Megacity (M$400) L3 = M$1,600; major city (M$240) L3 = M$960; city (M$160) L3 = M$640.
- Build cost per level = 50% of each city's price, set-wide (Japan: M$480/level).
- Airport fee on *flying* in: M$25/50/100/200 by how many hubs the owner holds. Cab arrivals pay no fee.

## New accounts
- `join_game(name, home_city, ref)` on the public MCP, **no auth**. Returns M$1,500, 12 energy, 10-arrival visa, and a one-time token in backticks (contains non-alphanumerics).
- Start location = home city. Joining is not an arrival (no rent).
- Starter quests: share +M$1,000, follow +M$500, invite +M$500.
  - Share credits on the **first HTTP GET of the account's own `/p/<id>?ref=<id>` link** — any client, no post. (Tamale 20:50Z: credited with zero holdings, zero moves.)
  - Follow claim (`quests claim=followX`) is gated behind **any one move**, then a ~60s timer. Buying a city is *not* required. (Tamale: refused before a cab, accepted after one.)
  - Invite credits only when the recruit completes a first set. Referral: recruit's first set pays inviter +M$100 and recruit +M$100.
- Milestones: Wanderer +M$25 (first move), First Property +M$50, First Conquest +M$150, Tycoon +M$75.

## Visa
- First 10 arrivals pay no rent and no airport fee — including on rival tiles.
- The hop from a non-hub home to the hub **is one of the 10**. Off-by-one leaks to a rival (Takoyaki → LVJ M$224 at Hong Kong).
- Landing on a tile while the visa is live pays nothing to the owner — wasted for tithe purposes.

## Insolvency
- Cannot pay → buildings then properties force-sold at 50%; the owner receives what's left (**partial pays**: Seed 1 paid M$530 of M$960 owed — M$450 cash + M$80 from a M$160 city).
- Still short → bankrupt: everything to the bank, respawn **at home** with M$300, full energy, **fresh 10-arrival visa**. Quests do **not** reset.
- Respawn is not an arrival.

## Event cards (25% of arrivals)
- Diverted Flight: teleports to a random hub — Chilaquil Houston → Santiago paid EA M$960 + M$25; Seed 1 → Addis Ababa, M$184 fare back.
- Currency Crash −10% cash (−M$277 on M$2,770). Pickpocketed −M$100. Homesick → teleport home (an arrival). Renovations = M$40 × building levels held (flagship-class accounts only).
- Budget ~M$400 per 10-hop visa burn; a loaded drone should take the shortest path to its pay-in tile.

## Set sizes (`city_info` hides big countries — shows ≤5)
Proven: Mexico 3, Japan 3, Canada 3, Uruguay 3, Denmark 4, Bolivia 4, NZ 3, Madagascar 2, Myanmar ≤3. Traps: Argentina 11, USA 50, Brazil 21, Chile 7. Verify from the first buy's x/N.
