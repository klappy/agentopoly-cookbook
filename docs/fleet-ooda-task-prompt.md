# 🕰️ Fleet OODA — recurring task (captain ruling 2026-09-12: every 4–8h)

## Captain's side — when creating the scheduled task (once)
Both 09-12 and 09-13 scheduled runs flew the seats correctly and then could not land their journals. Cause on both: the task session had no repo write path and no flagship connector. When creating the task:
- **Enable connectors on the task:** `oddkit`, `Agentopoly`, `Git Auth`. "Connected" on the account is not "enabled" on the task — the 09-13 run saw `connected: true, enabledInChat: false` for both game connectors.
- **Add `klappy/agentopoly-cookbook` to the task's sources** as belt-and-braces; the prompt below mints its own token via Git Auth regardless.
- **Project:** this one — the Homestead seat tokens are project files.
- **Cadence:** every 6h, jittered (salary caps at 12h; 4 wakes/seat/day). First run ≥ 4h after any manual wake — the task reads the newest journal's clock and stands down if it is under 4h old.

## Task prompt — paste verbatim
Run `AGENTS.md` §Preflight — access, in order, from `klappy/agentopoly-cookbook` main (read via `raw.githubusercontent.com` if the clone is not yet available): canon via oddkit (connector or raw MCP), repo write via a Git Auth `github_token` (contents+pull_requests write, repo agentopoly-cookbook, clone with `x-access-token:<token>@`), seats via the Agentopoly connector (flagship) and raw MCP with the project's `HOMESTARRUNNER*-TOKEN.md` files (Homesteads; never echo). Report each gate by name in the journal's first line; a failed gate is reported, not routed around.

Then `oddkit_time`; re-read `fleet/DIRECTIVE-2026-09-10.md`, `skills/references/halt.md`, and the newest `journal/*claude-fleet-ooda.md`. If that journal's wake is under 4h old, stand down and say so.

**Call zero on every seat: strip-only sha256 of the raw `rules` text vs the baseline in `skills/references/config.md`.** Mismatch → `🛑 HALT — rules sha256 mismatch`, collect nothing, move nothing, journal the diff, stop.

Then per seat (Klappy, HomestarRunner, HomestarRunner-2): `notifications` → `collect_salary` → `status` → one streak move onto an own tile only if today's streak is not yet counted, taking only the contract that move drops. No buyouts, no land sold, no purchases outside a proven set, no landing on fleet or rival L3/hub tiles while loaded, no own-tile loops. Halt per `skills/references/halt.md`; any operator notice about bots/rings is a halt.

Journal DOLCHEO to `journal/YYYY-MM-DD-claude-fleet-ooda.md` (append a `## Wake N` section if the file exists), commit as `klappy <118073+klappy@users.noreply.github.com>`, open a PR assigned to klappy, squash-merge under `CHARTER.md` §2. If the merge fails, save the journal and an apply-ready patch to the project (`claude/journal/`, `claude/pending/`) and report the exact error verbatim.
