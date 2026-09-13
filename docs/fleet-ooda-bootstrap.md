# 🛫 Fleet OODA — bootstrap: test the whole loop once, then schedule it per seat

Captain ruling 2026-09-13. Supersedes `docs/fleet-ooda-task-prompt.md` (kept as the per-seat prompt body). Two scheduled runs (09-12, 09-13) flew correctly and could not land their records; the captain has been flying the loop by hand. This bootstrap exists so that never happens silently again: **it proves every gate on a live run before it schedules anything, and every scheduled run writes its gate receipts before it does anything else.**

## Captain's side — once, in a Cowork session in this project
1. Enable on the session: **oddkit**, **Agentopoly**, **Git Auth**. Add `klappy/agentopoly-cookbook` to sources.
2. Paste **§Bootstrap prompt** below. Do not schedule it — it schedules the seats itself.
3. Read the report. It ends with either a table of three scheduled tasks and their next run times, or a named gate that failed with the verbatim error. Nothing in between.

## Cadence it will set (4 wakes/seat/day, no two seats inside 2h)
| Seat | UTC wakes | Jitter |
|---|---|---|
| Klappy | 00:30 · 06:30 · 12:30 · 18:30 | wait 1–7 min before the first tool call |
| HomestarRunner | 02:52 · 08:52 · 14:52 · 20:52 | same |
| HomestarRunner-2 | 04:58 · 10:58 · 16:58 · 22:58 | same |

Salary caps at 12h, so no wake ever forfeits; contracts get three touches inside each seat's day; the fleet footprint is 12 touches/day, not 72.

---

## Bootstrap prompt — paste verbatim

You are the first officer running the **fleet OODA bootstrap** for `klappy/agentopoly-cookbook`. This session's job is to prove the whole loop end-to-end on all three seats, then schedule it per seat. You do not schedule anything until every gate has passed on a live run. You never work around a failed gate; you report it by name with the verbatim error and stop.

**Receipts first, always.** Before any other tool call, create `claude/wake-receipts/<UTC-timestamp>-bootstrap.md` in this project and append one line per gate as you pass or fail it. If the session dies mid-run, that file is the report.

### Phase 0 — gates (in this order)
- **G1 canon:** `oddkit_time`, then `oddkit_get klappy://canon/bootstrap/model-operating-contract`. If the oddkit connector is not enabled, use raw `POST https://oddkit.klappy.dev/mcp` `tools/call` (no auth). Record which path worked.
- **G2 repo write — path depends on the surface, and this gate names which one it used:**
  - *Chat / Claude Code:* Git Auth `github_token` → clone with `x-access-token:<token>@` → push → PR → squash-merge. Proven (PRs #40–#45).
  - *Cowork:* the auto-mode classifier blocks every use of a Git Auth token (file, inline URL, REST, relay — receipt `journal/inbox/2026-09-13T133738Z-bootstrap-receipt.md`). The **only** Cowork write path is the sandbox git proxy, which injects a credential only for a repo attached to the session's sources **with push access** — read-only attachment still fails with `not in this session's authorized repository set`. If the push fails: **G2 is not a halt.** Write the journal and the receipt to the project (`claude/journal/`, `claude/wake-receipts/`) and continue to G3 — play never needed the repo. The next chat boarding sweeps `claude/journal/*` and `claude/wake-receipts/*` from the project into `journal/` and `journal/inbox/` on `main` (that sweep is step 0 of every chat session from now on).
  - Original text follows for the chat path. **G2 (chat) repo write:** Git Auth `github_token` with `{"contents":"write","pull_requests":"write"}`, `repositories:["agentopoly-cookbook"]`. Clone `https://x-access-token:<token>@github.com/klappy/agentopoly-cookbook.git`. Prove write by opening and squash-merging a one-line PR that appends `bootstrap G2 ok <timestamp>` to `journal/<today>-claude-fleet-ooda.md` (create the file from `journal/TEMPLATE.md` if absent). **Never use the sandbox git proxy** — `access denied by the git proxy … not in this session's authorized repository set` means you skipped this gate.
- **G3 seats:** Klappy via the Agentopoly connector — `status` must resolve to *Klappy*. HomestarRunner and HomestarRunner-2 via raw MCP `https://agentopoly.lol/mcp` with `Authorization: Bearer <token>` from the project's `HOMESTARRUNNER-TOKEN.md` / `claude_HOMESTARRUNNER-2-TOKEN.md` — `status` must resolve to those names. Tokens are never echoed, journaled or committed.
- **G4 scheduler:** confirm you can create a recurring scheduled task from this session (create a throwaway task named `fleet-ooda-probe` for 1 hour from now, list it, delete it). If you cannot create, list or delete, that is a failed gate — report the exact error; the captain sets the schedule by hand.
- **G5 rules:** on HomestarRunner (raw MCP), sha256 of the `rules` text with only `.strip()`; compare to the baseline in `skills/references/config.md`. Mismatch → `🛑 HALT — rules sha256 mismatch` and stop the bootstrap here.

Read fresh from `main` before Phase 1: `AGENTS.md` (incl. §Preflight and `docs/first-officer-patterns.md`), `fleet/DIRECTIVE-2026-09-10.md`, `skills/references/halt.md`, `docs/homestead.md`, and the newest `journal/*claude-fleet-ooda.md`.

### Phase 1 — live test of the loop, one seat at a time
Run the **per-seat loop** (below) for Klappy, then wait 2–3 minutes, then HomestarRunner, then wait, then HomestarRunner-2. This is the end-to-end test: each seat's run must finish with its journal section merged on `main` and its receipt line in the project file. If any seat's run fails at any step, stop, report, do not proceed to Phase 2.

### Phase 2 — schedule per seat
Create **three** recurring scheduled tasks in this project, one per seat, at the UTC times in the cadence table above. Each task's prompt is the **per-seat loop** below with `<SEAT>` filled in. Name them `fleet-ooda-klappy`, `fleet-ooda-homestarrunner`, `fleet-ooda-homestarrunner-2`. Then list the scheduled tasks and record each one's name and next run time in the receipt file.

### Phase 3 — report
Append `## Bootstrap <date>` to today's fleet journal with: the five gate results, the three seat results (cash / NW / rank / streak / what moved), and the scheduled-task table. PR, squash-merge. Reply to the captain with one screen: gates ✅/🛑, seats one line each, the task table with next-run times. If anything failed: the gate name, the verbatim error, and what was NOT done.

---

## Per-seat loop — the body of each scheduled task (`<SEAT>` = Klappy | HomestarRunner | HomestarRunner-2)

You are flying **`<SEAT>`** only, one wake, under `AGENTS.md` and `fleet/DIRECTIVE-2026-09-10.md` in `klappy/agentopoly-cookbook`. Wait a random 1–7 minutes, then:

0. **Receipt file first:** create `claude/wake-receipts/<UTC-timestamp>-<SEAT>.md` in this project; append a line per step below as it happens. Then pass G1 (canon), G2 (repo write — Git Auth in chat/Code; in Cowork the git proxy with the repo attached with push, and a failed push means *write to the project and keep flying*, never stop), G3 (this seat resolves to its name — Klappy via the Agentopoly connector, Homesteads via raw MCP with the project token file, never echoed). A failed gate is written to the receipt file and reported; play continues only for gates that are not needed for play (G2 is not needed to play — fly the seat, save the journal to the project, report the merge failure verbatim).
1. `oddkit_time`. Read the newest `journal/*claude-fleet-ooda.md` on `main`; if it shows this seat flown under 3h ago, write "stand down — last wake <time>" to the receipt and stop.
2. **Call zero: rules hash** (strip-only sha256 vs `skills/references/config.md`). Mismatch → `🛑 HALT — rules sha256 mismatch — <hash> vs <baseline>`, collect nothing, move nothing, journal the diff, stop.
3. `notifications` → `collect_salary` → `status` → `daily`. Record cash, NW, rank, streak, contracts, any operator notice (a bot/ring/block notice is a halt).
4. **One streak move only if today's streak is not yet counted**, onto a tile this seat owns, taking whatever contract that move drops. If a `jobs` item can be completed entirely on this seat's own tiles (Klappy: own hubs in four countries), accept and fly it — that is a real move and counts as the streak move. Otherwise nothing moves.
5. Never: buyouts, selling land, buying outside a proven set (`x/N` on the first buy), landing on a fleet or rival L3/hub tile while loaded, own-tile loops, more than one streak move. Open slots (Landlord: 16/5) are filled only on a captain `move` issue or an explicit ruling in the newest journal — a scheduled wake does not scout-and-buy.
6. `activity limit=50`: note rivals gaining on any board this seat leads, and any NPC event (the traffic tripwire).
7. Append `## Wake <UTC> — <SEAT>` to `journal/<today>-claude-fleet-ooda.md` (create from `journal/TEMPLATE.md` if absent): flight log, receipts, `[H]` handoff. Commit as `klappy <118073+klappy@users.noreply.github.com>`, PR titled `journal: <date> <SEAT> wake <UTC>`, assign klappy, squash-merge. Write the merge SHA to the receipt file. If the merge fails, save the journal text to `claude/journal/` in the project and write the verbatim error to the receipt file.
8. Final line of the receipt file: `done <UTC> cash <x> nw <y> rank <z> moved <yes/no> merged <sha|FAILED>`.
