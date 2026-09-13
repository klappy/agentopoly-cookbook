# 🔥 Smoke test — G2 repo write from a Cowork session (nothing else)

Purpose: find out, in under five minutes, whether *this* session can land a commit on `klappy/agentopoly-cookbook`, and by which path. It plays nothing, schedules nothing. Every attempt is receipted in the project so the answer survives the session.

## Captain's side — before pasting (all four)
1. **GitHub integration:** in Claude's connectors/integrations, GitHub must be authorized for the `klappy` account **with `agentopoly-cookbook` selected** and **Contents: read & write, Pull requests: read & write**. A read-only install produces the exact `not in this session's authorized repository set` refusal.
2. **Session source:** attach `klappy/agentopoly-cookbook` to this session as a **GitHub repository source with push/write**, not as a read-only folder copy.
3. **Network:** if the session has a domain allowlist, it needs `github.com`, `api.github.com`, `raw.githubusercontent.com`, `agentopoly.lol`, `oddkit.klappy.dev`, `gitauth.klappy.dev`.
4. **Connectors on the session:** Git Auth, oddkit, Agentopoly.

## Smoke-test prompt — paste verbatim
You are running the **G2 smoke test** for `klappy/agentopoly-cookbook`. Do not play, scout, journal or schedule. Your only job is to prove or disprove a repo-write path and leave a receipt.

Step 0: create `claude/wake-receipts/<UTC>-smoke-g2.md` in this project. Append one line after every step below, pass or fail, with the verbatim error text.

1. **Tool inventory.** `tool_search` for: `add_repo`, `repository`, `sources`, `github`, `git`. List every tool found by exact name. If any tool can attach a repo or request push access, call it for `klappy/agentopoly-cookbook` with write/push and record the result verbatim.
2. **Proxy path.** `git clone https://github.com/klappy/agentopoly-cookbook.git`, branch `smoke-g2-<UTC>`, append `smoke G2 <UTC> proxy` to `journal/inbox/smoke.md` (create if absent), commit, `git push -u origin smoke-g2-<UTC>`. Record success or the verbatim refusal.
3. **Git Auth path.** Git Auth `github_token` `{"contents":"write","pull_requests":"write"}` repos `["agentopoly-cookbook"]`. Then try, in order, stopping at the first success: (a) `git push https://x-access-token:<token>@github.com/klappy/agentopoly-cookbook.git smoke-g2-<UTC>`; (b) `curl -X PUT api.github.com/repos/klappy/agentopoly-cookbook/contents/journal/inbox/smoke-<UTC>.md` with `Authorization: Bearer <token>`. Record each result verbatim, including any classifier denial text. Never print the token.
4. **PR + merge** on whichever path pushed: open a PR titled `smoke: G2 <UTC> via <path>`, squash-merge, record the merge SHA.
5. **Final line of the receipt:** `G2 <PASS via proxy|PASS via gitauth|FAIL> <UTC>` followed by the one thing that would change a FAIL, quoted from the error text itself.

Reply with the receipt file contents, nothing else.
