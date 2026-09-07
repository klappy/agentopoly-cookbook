# HANDOFF — Homestead v1 (single file; add to the project, then paste the kickoff)

Canonical copy: https://github.com/klappy/agentopoly-cookbook/blob/main/docs/HANDOFF-homestead.md — a fresh session can also fetch this via oddkit with `knowledge_base_url=https://github.com/klappy/agentopoly-cookbook` if the project file is missing. Repo `main` is the record of record; this file is a snapshot.

---
## 1. Strategy — docs/homestead.md


> A Homestead is a real player. Its purpose is its own land and rent. It visits the flagship because the flagship holds the best tiles, and only with money it doesn't need. If every other account vanished, a Homestead would still be a sensible thing to be running. That is the test, and it is also why nothing it earns gets reversed.

**Captain ruling 2026-09-07 22:44Z.** Test v1: one fresh seat, one fresh session, the `agentopoly-engine` skill, this doc as its strategy. Compare against Otto (organic) and against the retired drone farm (reversed).

## Doctrine (order matters)
1. **Claim before build.** Claimable small sets are the constraint; cash is not. Take every city of a proven ≤4-city country before spending a single M$ on levels. Verify N from the first buy's `x/N`; `city_info` hides big countries.
2. **Lock = complete.** A complete set is buyout-immune at L0. Never hold singles from two countries at once.
3. **Hub in the set.** Buy the unowned airport under your own set city at list (M$200) the moment you stand on it. Hub + L3 city is the stack.
4. **Then build**, all three levels, funded by rent and salary. A cheap L1 is allowed the moment a set completes if you're standing in it.
5. **Repeat to 12/12 and 4/4.** Then the Homestead is locked and becomes a receiver.
6. **Tithe from surplus only.** Cash ≥ rent + return fare + M$300 cushion, next claim/build already funded, never a forced sale. Destination: Mexico City or Tokyo by air (M$1,800) — because they're the best tiles, not because they're ours.

## What a Homestead never does
- Mint or run drone seats. Retired; reversed by the operator.
- Self-click its own share link or chain referrals to its own accounts. Starter quests are done as designed or skipped.
- Route through rival L3 tiles while loaded. Visa hops on rival tiles are fine; paying M$1,600 to LVJ is not.
- Sell land to pay anyone.
- Pay a buyout, except to close a set it already holds ≥1/N of, from a single-holder with no set, at 2× a city price.

## Site selection
- A proven ≤4-city country with a hub inside it, **not already held by any fleet engine** (check `fleet/README.md` registry and `config.md`), in a region where `activity` shows traffic. Distinct cluster from every other engine.
- Home = the hub city of that set. Home locks after move one; Homesick then teleports you onto your own tile.
- Candidates to scout first (unverified sizes — Recipe 04 applies): Portugal, Peru, Colombia (partly flujo's), Morocco, South Africa, Kenya, Vietnam, Malaysia, Philippines, Indonesia, Turkey (Xaros), Greece (Xaros). Skip anything a rival has already built.

## Success metrics (journal every session)
| Metric | Target v1 |
|---|---|
| Time to first locked set | ≤ 2 sessions |
| Rent per city per 24h | report; compare to Otto (M$446–1,321/city lifetime) |
| Clawbacks / operator notices | **0** — this is the pass/fail |
| Forced sales | 0 |
| Tithes paid from surplus | count and M$; note the return fare |

## Session shape
`agentopoly-engine` skill drives it. Each session: OODA → notifications → salary → status → mode (building or locked) → moves → DOLCHEO journal to `journal/YYYY-MM-DD-homestead-<name>.md`. Halt list per `skills/references/halt.md`.

---

## 2. Session procedure — docs/homestead-session-prompt.md


You are flying a **Homestead**: a new, real Agentopoly player seat under `docs/homestead.md`. Load the `agentopoly-engine` skill and follow it; this prompt only sets the test up.

## First session only — board the seat
1. `rules` → sha256 (baseline `cb6d896486f6`); `leaderboard` → player count. Report both.
2. Scout with `city_info` for a site per `docs/homestead.md` §Site selection: proven ≤4 cities, hub inside, no fleet engine there, traffic in `activity`. Pick one. Say why in one line.
3. `join_game` with: a plausible player handle chosen by the captain (ask once if not given), `home_city` = that set's hub city, `ref` = the flagship's id from `config.md` (a real referral: this seat will actually play).
   Save the token to the captain's private seat file — never to git, journal, PR, or chat.
4. Starter quests: do them as designed if the captain has an X account to post/follow with; otherwise skip them. Do not click your own link. Do not chain refs to other fleet seats.
5. Register the seat in `fleet/README.md` (name, home, cluster, agent, "Homestead v1").

## Every session — the engine loop
Run the `agentopoly-engine` skill exactly. Building mode until 12/12 + 4/4 in complete sets; locked mode after. Tithe only from surplus and only by flight into Mexico City or Tokyo. Never sell land to pay.

## Report
DOLCHEO journal `journal/<date>-homestead-<name>.md` with the §Success metrics table from `docs/homestead.md` filled in. Any operator notice about clawbacks or bot rings, verbatim, is a HALT — report it and stop.

---

## 3. The engine skill — skills/agentopoly-engine/SKILL.md (if the .skill isn't installed, follow this directly)


---

## 4. Fleet config — references/config.md


Edit this file when the fleet changes. Both skills read it. Never put a seat token here.

## Flagship (tribute destination)
- Player: **Klappy** — referral id `9513d290-56b0-4305-9429-3f9bfe1d3420`
- Public page: https://agentopoly.lol/p/9513d290-56b0-4305-9429-3f9bfe1d3420
- State (2026-09-07 21:5xZ): locked — 12/12 cities, 4/4 airports, four sets at L3. Receiver only.

## Pay-in tiles (rents live as of 2026-09-07; re-read `city_info` before relying on them)
| Corridor | Fly into (rent + M$200 airport fee) | Then cab to |
|---|---|---|
| Mexico | **Mexico City** M$1,600 → M$1,800 by air | Guadalajara M$960, Cancún M$640 |
| Japan | **Tokyo** M$1,600 → M$1,800 by air | Osaka M$1,600, Fukuoka M$640 |
| Canada | Toronto M$960 — **cab in only**; the Toronto airport is flujo's | Montreal M$960, Vancouver M$640 |
| Uruguay | Buenos Aires hub (ours, fee M$200) → cab Montevideo M$640 | Punta del Este M$400, Salto M$400 |

Best yield per drone: Mexico City or Tokyo by air (M$1,800), then the M$960–1,600 cab neighbour.

## Engines (feed these when instructed; each tithes the flagship once locked)
| Seat | Agent | Engine | Pay-in L3 |
|---|---|---|---|
| Otto | Grokbot | Denmark L3 (+ Paraguay) | Copenhagen |
| Auggie | Grokbot | Bolivia L3 | La Paz / Santa Cruz |
| CoS | Grokbot | New Zealand L3 (+ Taiwan) | Auckland |
| EA | Grokbot | Chile (Santiago) | Santiago M$960 |

## Rivals to never land on loaded
LVJ — Korea L3 (Seoul M$1,600, Busan M$640), Thailand L3, Dubai L3, Hong Kong + Singapore + Dubai airports.
Real_Xaros / Real_Xaros_2/3 — Istanbul, Athens, Amsterdam, Lisbon L3 with airports.
flujo.com.co — Bogotá L3; Toronto, Washington, Atlanta, Chicago airports.

## Baselines for OODA
- `rules` text sha256 prefix: **cb6d896486f6** (2026-09-07 20:50Z)
- Player count: 156 (2026-09-07 20:50Z)

---

## 5. Rules as observed — references/rules-observed.md


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

---

## 6. Halt vocabulary — references/halt.md


A halt ends the session. Report the halt with its receipt; never work around it, never retry a refusal unchanged. Halts are how the captain learns the game changed.

| Signal | Meaning | Applies to |
|---|---|---|
| `rules` sha256 ≠ baseline in `config.md` | rules changed — strategy may be wrong | both |
| `join_game` refused, or a fresh token cannot act | spawned sessions are capped | drone-farm |
| share link GET or `followX` claim stops crediting | quest pump patched | drone-farm |
| a pay-in tile or hub changed hands | corridor compromised | both |
| own seat missing a city or airport it held | buyout or force-sale happened | engine |
| a rival within M$1,800 of the flagship's NW | flagship guard — say so loudly | both |
| any tool refusal you do not understand | unknown rule | both |

Reporting shape for a halt: `🛑 HALT — <signal> — <receipt verbatim> — <what was NOT done>`.

---

## 7. Why Homestead exists (the debrief, short)
On 2026-09-07 the fleet ran a drone farm: 16 throwaway seats, ~M$2,500 each, funnelled to the flagship. The operator reversed 43% of it within two hours with the notice "money from bot rings never stays." Seats that own land and earn rent (Otto: three landings, zero reversed) were untouched. Homestead is the account type the operator leaves alone: a real player whose flagship visits are surplus travel, not purpose. Pass/fail for v1 is zero operator notices.

## 8. Seat file (private, never in the repo)
Tokens for any seat this session mints go in the captain's `agentopoly-seat-file.txt`, one line: `name | player id | home | token`. If the file isn't attached and a token is needed, ask once.
