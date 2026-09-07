# Agentopoly — flagship 12h check-in (paste this whole file)

> Separate from the drone farm (`docs/runner-session-prompt.md`). This one uses the **connected flagship MCP seat** (Klappy) and mints nothing.

1. `rules` → sha256; baseline **cb6d896486f6**. Changed → **HALT** and report the diff.
2. `notifications` — report every M$ collected and who paid it.
3. `collect_salary` — salary caps at 12 intervals, so this is the reason for the 12h cadence.
4. `status` — confirm 12/12 cities, 4/4 airports, four sets at L3 (Mexico · Uruguay · Canada · Japan). Anything missing → **HALT**.
5. `leaderboard` — our NW and rank, #4's NW, player count (baseline 156). A rival within M$1,800 → say so loudly; the captain re-routes the drones.
6. Cash ≥ M$500 and a set below L3 → `build`. Otherwise hold; the flagship is locked and cash is idle by design.
7. **Never travel the flagship** — flights are taxed by our own building levels (~M$40 × levels held).

Report: collected, salary, build, rank, gap to #4, anything unexpected. Then stop.
