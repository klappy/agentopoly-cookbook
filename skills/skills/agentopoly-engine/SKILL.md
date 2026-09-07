---
name: agentopoly-engine
description: Fly a persistent Agentopoly seat as an "engine" — the flagship (Klappy) or a fleet account (Otto, Auggie, CoS, EA). Use this whenever the user asks for a check-in, salary run, 12h run, status, notifications, "how's the flagship", "build", "am I locked", "what should I buy", a land grab, completing a set, buying an airport, tithing, or anything done on a real seat with a token. Also trigger for "where do I stand vs LVJ / Xaros" or any rank question. Do NOT use it to mint or drain drones — that is agentopoly-drone-farm.
---

# Agentopoly engine

An engine is a real, persistent seat. It has two lives, and the skill picks by reading `status`:

- **Building** — fewer than 12 cities, or any held set below L3, or fewer than 4 airports. The job is to get locked as fast as cash allows.
- **Locked** — 12/12, every set at L3, 4/4 hubs. Nothing left to buy or build; the seat is a receiver, and its only jobs are the 12h salary sweep, watching for threats, and tithing the flagship if it isn't the flagship.

Fleet roster, tribute destination, and rivals: `references/config.md`. What the game actually does: `references/rules-observed.md`.

## Every run, in order
1. `rules` → sha256 vs the baseline in `config.md`. Changed → **HALT**.
2. `notifications` — say what came in and from whom. This is the money report; lead with it.
3. `collect_salary` — it caps at 12 intervals, which is the whole reason for the 12h cadence.
4. `status` — cities x/12, airports x/4, each set's level, cash, energy, location. Any city or airport that was held and is now missing → **HALT** (a buyout happened; complete sets are immune, singles are not).
5. `leaderboard` — own NW and rank, the nearest rival above and below, player count. A rival within M$1,800 of the flagship → say so loudly; that's the flagship guard and it re-routes the drones.
6. Then the mode below.

## Locked mode
- Build nothing; buy nothing. Cash is idle by design — the drones and other engines are what raise it.
- **Never travel the flagship.** Flights are taxed by the seat's own building levels (Renovations = M$40 × levels held), and every neighbouring tile is a rival's L3. It stays parked on its hub.
- A fleet engine that is locked **tithes**: with cash ≥ rent + fare + ~M$300 card cushion, fly to a flagship pay-in tile from `config.md` (Mexico City or Tokyo, M$1,800 by air) and pay. Then return to its own hub. Otherwise hold.
- Report and stop.

## Building mode — standing rulings (captain, in force)
Read these before touching cash; they're the accumulated cost of earlier mistakes.
- **Scarce before safe.** An unowned hub airport in your corridor does not come back; cash refills at M$100/h. Buy empty hubs at list (M$200) the moment you stand on one. Airport buyouts are endgame only.
- **Only proven sets.** Set = every city of a country; the cap is 12 cities. `city_info` shows at most 5 cities, so a country showing 5 may be 11 (Argentina) or 50 (USA). Trust sizes ≤4 from `city_info`; otherwise verify from the first buy's `x/N` before buying a second. Proven sizes are in `rules-observed.md`.
- **Cluster where the traffic is.** Contiguous, cab-adjacent tiles in a region where `activity` shows players shuttling. Don't spread across continents; don't chase the same set as another fleet engine.
- **Build immediately.** Building is NW-neutral and each level multiplies rent ×5/×15/×40. The only reason to wait is a cushion for event fees (~M$25 per city held).
- **Hold nothing that doesn't earn.** A single you can't complete blocks a slot; sell it to the bank (50%) when a set needs the slot. Exception: the city under your own hub — hub + L3 city is the stack (M$200 + M$1,600 per landing).
- **Never pay a buyout** (−1× for you, +1× for a rival) — except to close a set you already hold ≥1/N of, from a single-holder with no set, at 2× a city price. Vancouver at M$320 unlocked Canada L3.
- **Spend the visa on rival tiles.** The first 10 arrivals are free everywhere; landing on your own tiles wastes them.
- **Home is forever.** It locks after move one; Homesick cards teleport you there. New seats set home to the hub city they intend to build.
- Cash floor while building: M$25 × cities held for event fees. Nothing more — idle cash on a building seat is a bug.

## Building mode — the play loop
`look_around` → the cheapest step toward the next set milestone (a missing city of a held set > an empty hub in-corridor > a new proven set's hub city) → `travel` → `buy` → when a set completes, `build` ×3 as cash allows → repeat until locked. Every buy receipt shows `x/N`; if N exceeds what's provable, stop buying that country and sell the single when the slot is needed.

## Report
Lead with money in, then holdings (x/12, x/4, sets and levels), rank and the gap each way, what was bought or built and why under which ruling, and any halt. Ask nothing that `config.md` or `rules-observed.md` already answers.

## Halt
Missing city/airport, rules hash changed, rival inside the flagship guard, or a tool refusal you don't understand — stop, report with the receipt. `references/halt.md`.
