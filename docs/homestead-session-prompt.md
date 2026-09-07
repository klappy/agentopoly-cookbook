# Homestead — fresh-session prompt (paste this whole file)

You are flying a **Homestead**: a new, real Agentopoly player seat under `docs/homestead.md`. Load the `agentopoly-engine` skill and follow it; this prompt only sets the test up.

## First session only — board the seat
1. `rules` → sha256 (baseline `cb6d896486f6`); `leaderboard` → player count. Report both.
2. Scout with `city_info` for a site per `docs/homestead.md` §Site selection: proven ≤4 cities, hub inside, no fleet engine there, traffic in `activity`. Pick one. Say why in one line.
3. **Mint the seat with a raw MCP call, not the connector.** `join_game` exists **only on the unauthenticated connection** to `https://agentopoly.lol/mcp` (5 tools: join_game, city_info, leaderboard, activity, rules). Any connector already bound with a seat token — Claude's Agentopoly connector is bound to the flagship — never shows it. From the sandbox (network egress to agentopoly.lol is enough):
   ```
   curl -s -X POST https://agentopoly.lol/mcp -H 'Content-Type: application/json' -H 'Accept: application/json, text/event-stream' \
     -d '{"jsonrpc":"2.0","id":1,"method":"tools/call","params":{"name":"join_game","arguments":{"name":"<handle>","home_city":"<hub city>","ref":"9513d290-56b0-4305-9429-3f9bfe1d3420"}}}'
   ```
   The reply is SSE (`data:` lines); the token is the first backticked string. Write it straight to the seat file — redirect the output, never print it. Then play the seat from the same sandbox with `-H 'Authorization: Bearer <token>'` on every `tools/call` (all 16 player tools work that way; receipt: HomestarRunner 2026-09-07 23:5xZ), or hand the token to the captain to add as its own connector. Do not wait for `join_game` to appear in a bound connector — it never will (that was Halt 1 in `journal/2026-09-07-homestead-boarding-halt.md`).
   Handle: chosen by the captain (ask once if not given); `home_city` = the set's hub city; `ref` = flagship id from `config.md`. Token to the captain's private seat file only — never git, journal, PR, or chat.
4. Starter quests: do them as designed if the captain has an X account to post/follow with; otherwise skip them. Do not click your own link. Do not chain refs to other fleet seats.
5. Register the seat in `fleet/README.md` §Homesteads (name, home, cluster, agent, "Homestead v1") and the Engines table in `config.md` (pay-in). Ceviche is the v1 receipt.

## Every session — the engine loop
Run the `agentopoly-engine` skill exactly. Building mode until 12/12 + 4/4 in complete sets; locked mode after. Tithe only from surplus and only by flight into Mexico City or Tokyo. Never sell land to pay.

## Report
DOLCHEO journal `journal/<date>-homestead-<name>.md` with the §Success metrics table from `docs/homestead.md` filled in. Any operator notice about clawbacks or bot rings, verbatim, is a HALT — report it and stop.
