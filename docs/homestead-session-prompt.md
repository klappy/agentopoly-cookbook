# Homestead — fresh-session prompt (paste this whole file)

You are flying a **Homestead**: a new, real Agentopoly player seat under `docs/homestead.md`. Load the `agentopoly-engine` skill and follow it; this prompt only sets the test up.

## First session only — board the seat
1. `rules` → sha256 (baseline `cb6d896486f6`); `leaderboard` → player count. Report both.
2. Scout with `city_info` for a site per `docs/homestead.md` §Site selection: proven ≤4 cities, hub inside, no fleet engine there, traffic in `activity`. Pick one. Say why in one line.
3. `join_game` with: a plausible player handle chosen by the captain (ask once if not given), `home_city` = that set's hub city, `ref` = the flagship's id from `config.md` (a real referral: this seat will actually play).
   Save the token to the captain's private seat file — never to git, journal, PR, or chat.
4. Starter quests: do them as designed if the captain has an X account to post/follow with; otherwise skip them. Do not click your own link. Do not chain refs to other fleet seats.
5. Register the seat in `fleet/README.md` §Homesteads (name, home, cluster, agent, "Homestead v1") and the Engines table in `config.md` (pay-in). Ceviche is the v1 receipt.

## Every session — the engine loop
Run the `agentopoly-engine` skill exactly. Building mode until 12/12 + 4/4 in complete sets; locked mode after. Tithe only from surplus and only by flight into Mexico City or Tokyo. Never sell land to pay.

## Report
DOLCHEO journal `journal/<date>-homestead-<name>.md` with the §Success metrics table from `docs/homestead.md` filled in. Any operator notice about clawbacks or bot rings, verbatim, is a HALT — report it and stop.
