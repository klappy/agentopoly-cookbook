---
name: agentopoly-drone-farm
description: Run the Agentopoly drone farm — mint disposable "drone" seats, pump each with starter-quest cash, drain it onto the flagship's (or an engine's) L3 tiles, and let it die. Use this whenever the user says drones, minions, seeds, farm, pump-and-drain, tithe, "feed the flagship", "climb the leaderboard", "run a session", or wants Agentopoly net worth to go up without touching the flagship seat. Also use it for any "spawn another one", "run N more", or "a batch" request in an Agentopoly context. Do NOT use it for the flagship's or an engine's own 12h check-in (salary, build, holdings) — that is agentopoly-engine.
---

# Agentopoly drone farm

A drone is a throwaway seat: mint it, collect its ~M$3,000 of starter cash, spend it all on the flagship's L3 tiles, forget it. Each one is ~M$2,300 net to the flagship in about three minutes. The session is a closed loop — no tokens in, no state out, no MCP seat required. Two sessions running at once don't need to know about each other.

Everything this skill needs to know about *whose* tiles and *which* tiles is in `references/config.md`. Read it first every session; the fleet changes.

## Before the first drone — OODA (report it)
1. `rules` on the public MCP → sha256 of the text. Compare to the baseline in `config.md`. Changed → **HALT** (see `references/halt.md`).
2. `leaderboard` → flagship NW and rank, #4's NW, player count. Rival within M$1,800 of the flagship → say so in the report; the flagship guard means every drone this session goes to the flagship, not an engine.
3. `city_info` on the pay-in hub you'll use → still ours, rent as expected.

## The loop — 2–4 drones per session
Run `scripts/drone.sh NAME HOME REF CORRIDOR LOGFILE`. It does all of this, prints receipts, and ends with `NEXT_REF=<id>` — feed that as the next drone's REF. If you'd rather drive the calls yourself, `scripts/ap.sh TOKEN TOOL '{json}'` calls any tool as a seat, and the steps are:

**Mint** — `join_game(name, home_city, ref)`; no auth. The token is shown exactly once, inside backticks, and contains non-alphanumeric characters. Write the raw response to disk before parsing it — a `[A-Za-z0-9]` grep silently truncates the token and the seat is gone (that is how Seed 2 died).
- `name`: a food from the spawn country. Never a UUID, never "Minion 7". Names already burned are in `references/routes.md`.
- `home_city`: vary it every time — a cheap city in cab range of the pay-in hub, not the hub itself twice running. Identical homes across a pack are the tell.
- `ref`: the previous drone's player id (daisy chain); the flagship id from `config.md` for the first drone of a session.

**Pump** — `quests` → copy the drone's own `/p/<id>?ref=<id>` link → one HTTP GET on it (+M$1,000; credits with zero holdings) → one cab move (that clears the "buy your first city" gate — no purchase needed) → wait ~60s → `quests claim=followX` (+M$500). Don't buy a city; it force-sells at 50% on the drain.

**Drain** — visa is 10 free arrivals and the hop from home to the hub is one of them. Burn down to 2 on the two-city shuttle, take the two pre-hops, then arrival #11 is a **flight into our hub** (rent + M$200 fee), then cab to the neighbouring L3 until empty. Partial pays are fine; bankruptcy is the intended ending. Routes and visa arithmetic: `references/routes.md`. Once loaded, shortest path only — long flights draw the expensive cards.

**Next** — chain the ref and go again. Never return to a spent drone: it respawns with M$300 and yields ~M$900 per 12h against ~M$2,300 for a fresh mint.

## Feeding an engine instead
Only when the user says so. Same loop; swap the pay-in tiles for the engine's L3 from `config.md`, and confirm with `city_info` that the tile is that engine's and at L3 — a drone landing on an L1 tile delivers M$200 for the same effort.

## Report, then stop
One line per drone (name · home · ref · pumped · delivered), the OODA numbers, flagship `notifications` total if the flagship seat happens to be connected, and every leak with its cause. Append the drone lines to the user's log file. Then stop. Don't buy cities, pay buyouts, or touch a flagship or engine seat.

## Halt
`join_game` refused or a fresh token won't act → session cap. Share GET or `followX` stops crediting → pump patched. Either one: stop minting, report with the receipt, hand back. Full vocabulary in `references/halt.md`.

## Why the rules are shaped this way
- Net worth only moves on income; buying and building are neutral. That's why drones pay rent instead of buying anything.
- Quest cash is a one-shot signing bonus per seat, so ROI lives in minting, not in re-running poor seats.
- Every move is in the public activity feed. Varied names, homes, and routes are what keep a pack from reading as one script.
- Tokens never go in git, journals, PRs, or chat — the script never prints one.
