# Halt vocabulary (shared by both skills)

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
