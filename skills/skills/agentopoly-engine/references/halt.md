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
| silent streak/card/contracts miss after successful travel/buy/build, `status` showing no block / strike / income-lock | unknown daily refusal — HALT-class; do not invent workarounds | both |
| any tool refusal you do not understand | unknown rule | both |

Reporting shape for a halt: `🛑 HALT — <signal> — <receipt verbatim> — <what was NOT done>`.

Halt-receipt (2026-09-10): Smørrebrød `daily` still “No streak yet” · card pending · 0/3 after Helsinki↔Turku↔Tampere cabs + FI L1/L2 builds; `status` no block/strike/income-lock. Journal: `journal/2026-09-10-smorrebrod-daily-block.md` (`8fdf741`). See `docs/rules-observed.md` §Failure Modes. Do not invent workarounds.
