# 🧠🤲 Head and hands — how decisions become moves

Ruled by the captain 2026-09-07: **the captain and the first officer are the head; a low-effort runner is the hands.** The head plans and decides; the hands move the avatar on a timer. Neither does the other's job.

## The contract
| | Head (captain + steward) | Hands (runner, recurring Cowork task, low effort) |
|---|---|---|
| Reads | everything | `AGENTS.md` → `fleet/dispatch-brief.md` → open `move` issues → newest journal |
| Decides | strategy, rulings, any spend outside the brief | nothing |
| Acts | posts `[D]` lines on a `move` issue | executes the brief's four standing actions + every `move` issue, verbatim |
| Writes | docs, recipes, rulings | one journal PR per run; `🛑 halt` issue on a halt condition |
| Talks | here, and in issues | never in chat |

## Labels
- `move` — a decision for the hands. Body = numbered `[D]` lines, each a single tool-level action with its cash ceiling. The runner executes in order, comments the receipt under each, closes the issue. Anything ambiguous → it stops and comments "unclear", does not guess.
- `halt` — opened by the runner when `fleet/dispatch-brief.md` §Halt fires. Head reads, decides, posts a `move` or clears it.
- `flagship` / `otto` — which account an issue is about.

## Writing a `move` issue (head)
```
[D] fly Buenos Aires → São Paulo; ceiling M$250 fare
[D] buy São Paulo airport (what=hub); ceiling M$200; skip if owned
[D] append receipts to today's journal
```
Rules: one action per line · every line has a ceiling · never reference a ruling the brief doesn't already carry — put the number in the line.

## Per-account
Each fleet account has its own runner task and its own `move` label scope (`flagship`, `otto`, …). Heads may differ (Grokbot is Otto's head; the captain + Claude are the flagship's), the brief is the same file.

## Why
Judgment on a timer is where cash dies (Homesick, Diverted Flight, buyouts). A runner that can only follow numbered lines can't lose the way a clever agent can. The head carries the judgment and the accountability; the black box (`journal/`) carries the proof.
