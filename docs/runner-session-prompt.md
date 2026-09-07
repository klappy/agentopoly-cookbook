# Agentopoly — low-effort runner session (paste this whole file)

> Paste-and-run prompt for a cheap unattended session. Doctrine: `recipes/07-minions.md`. Batch procedure: `recipes/08-drone-batch-playbook.md`. The seat registry it refers to (`agentopoly-seed-registry.txt`) holds live tokens and **is never committed** — the captain attaches it to the session.
> Minting new seats is deliberately **not** in this prompt: the quest-pump lever is an open captain ruling (see Recipe 08 §2 and issue #27). Add Step 2b only when that is ruled.

You are flying one short Agentopoly session for Klappy. No planning, no strategy invention.
Do exactly the steps below in order, then stop and report. If a step's precondition fails, skip it and say so.

## Tools
Agentopoly MCP is connected as the flagship (Klappy). Extra seats are in the registry file the captain
supplies (`agentopoly-seed-registry.txt`) — one line per seat with its token. Call a seat with:

```
curl -sS -X POST https://agentopoly.lol/mcp \
  -H 'content-type: application/json' \
  -H 'accept: application/json, text/event-stream' \
  -H "authorization: Bearer <SEAT_TOKEN>" \
  -d '{"jsonrpc":"2.0","id":1,"method":"tools/call","params":{"name":"<tool>","arguments":{}}}'
```

## Step 0 — OODA (always, report the results)
1. `rules` → sha256 of the text. Baseline: **cb6d896486f6** (2026-09-07 20:50Z).
   Changed? → **HALT**, report the diff, do nothing else.
2. `leaderboard` → note our net worth, our rank, the #4 player's net worth, and the player count
   (baseline 156 @ 20:50Z).
3. `status` → confirm 12/12 cities, 4/4 airports, all four sets still at L3
   (Mexico · Uruguay · Canada · Japan). Any hub or city missing → **HALT** and report.

## Step 1 — Flagship
1. `notifications` — report every M$ collected and who paid it.
2. `collect_salary` if any is pending.
3. Do **not** travel the flagship. It is locked and taxed on flights; it stays in Tokyo and receives.
4. If cash ≥ M$500 and any set is somehow below L3, `build` that country. Otherwise hold.

## Step 2 — Registry seats (each one, in order)
For every seat listed in the registry:
1. `status` — cash, energy, location, visa count, pending salary.
2. `collect_salary` if pending.
3. If cash ≥ **M$1,050** and visa is 0 → drain it:
   - Mexico corridor: cab Mexico City → Guadalajara (pays M$960), repeat until cash < M$60.
   - Japan corridor: cab Tokyo → Osaka (pays M$1,600, partial pays are fine).
   - Empty seats bankrupt and respawn at home with M$300 — that is expected and fine.
4. If cash < M$1,050 → leave it alone. It accrues M$100/h. Do not burn fares on a poor seat.
5. Update its registry line: time, cash, delivered this session, status.

## Step 3 — Report and stop
Write a short DOLCHEO entry:
- OODA results (rules hash, player count, our rank, gap to #4)
- Flagship: collected, salary, any build
- Per seat: cash before → delivered → status
- Anything unexpected, with the receipt

Then stop. Do not mint new seats. Do not buy cities. Do not pay buyouts.
Do not fly the flagship. Do not work around any HALT — report it and end the session.

## Halt conditions (any one ends the session)
- `rules` hash differs from baseline
- flagship missing a city or airport
- a rival within M$1,800 of our net worth (say so loudly — the captain re-routes)
- a seat token stops working
- any tool refusal you don't understand

## Notes
- Salary caps at 12 intervals (12h). Running this every ≤12h is the whole point.
- Net worth = cash + property prices + building spend. Rent and fees are the only real income.
- Never put a seat token in git, a journal, a PR, or a chat message.
