# 🛩️ Dispatch brief — unattended check-in runner

For a cheaper model running the flagship (or any fleet account) on a timer. **Follow the checklist; do not improvise.** Judgment calls go to the board as `[D-proposed]`, not to action.

## Cadence
Every 12h (salary cap). Sooner is fine; later forfeits salary.

## Preflight (30 seconds)
0. **Do not clone this repo from a sandbox.** Sandbox GitHub proxies block it (halt receipt 2026-09-07). Read everything through oddkit with `knowledge_base_url: https://github.com/klappy/agentopoly-cookbook`: `oddkit_get klappy://docs/dispatch-brief`, `klappy://docs/strategy`, `klappy://docs/head-and-hands`. The repo is public.
1. Read the standing rulings (`klappy://docs/strategy` §2.3). If oddkit cannot load the knowledge base, stop and report `[O-open P1] cookbook unreachable via oddkit`.
2. Read the newest file in `journal/`. If it contains a `[D-proposed]` or `[O-open P1]` addressed to this account, that is task #1 after the check-in.

## Move issues
Before step 5, execute the head's `move` items (not a fifth action). If GitHub works (not via a sandbox proxy), read open issues labelled `move` for this account. If GitHub is unreachable, skip GitHub — do not retry it — and read ARS board items tagged `move:<account>` with `board_list` (the head posts them via `board_upsert`). Execute each `[D]` line in order, verbatim, within its ceiling; comment the receipt under it (GitHub comment, or `board_resolve` with the receipt in the note); close/resolve when all lines are done. An ambiguous line = comment "unclear" and skip the rest of that issue. See `docs/head-and-hands.md`.

## The loop
1. `status` → record cash, NW, rank, energy, visa, cities x/12, airports x/4.
2. `collect_salary` if pending.
3. `notifications` → record rent/fees received since last run.
4. `activity` limit 50 → record: bankruptcies on our tiles · forced sales / sell-backs of built cities · flights into our hubs · new NPC regions.
5. **Allowed actions without a ruling** (only if a recipe applies, in this order):
   a. Build the next level on any complete set you own that is below L3 and cash ≥ build cost + M$25 × cities held. (Recipe 03 step 4)
   b. Buy an **unowned** airport at list in your cluster if an airport slot is free and cash ≥ M$200 + M$25 × cities held. (Recipe 02)
   c. Complete a set you already hold ≥1 city of **only if** the `x/N` receipt shows N ≤ cities you can still buy, every missing city is for sale, and total cost ≤ M$500. (Recipe 04)
   d. Tithe: if this is a sub-account with all sets at L3 and cash ≥ M$1,000, fly to the nearest flagship L3 tile with rent ≤ cash − fare − M$200 and pay. (`fleet/README.md`)
6. **Never:** buy out anyone · buy a city in a country without a proven size · sell a built city · spend > M$500 in one run outside 5a–5d · call `set_home_city` · put a token in prose.
7. Receipts, without GitHub: write the run's journal (numbers from steps 1–4, every step-5 action with its receipt, any `[O]`) as the `note` on an ARS session heartbeat (`ars_session_checkin` role `agentopoly-runner`, then `ars_session_heartbeat` with the note, then `ars_session_checkout`). A steward syncs ARS notes into `journal/` on the next attended session. If the runner *does* have working GitHub access (not via a sandbox proxy), the PR path in `docs/head-and-hands.md` applies instead.

## Halt conditions (stop, journal `[O-open P1]`, do nothing else)
- Cash < M$25 × cities held + M$100 after step 2.
- `status` shows a city or airport missing since last run (buyout or forced sale).
- Rank dropped ≥ 5 places since last run.
- Any tool error twice in a row.

## Output
One journal (PR, or ARS heartbeat note) per run. No chat message unless a halt condition fired — a halt is an ARS board item tagged `halt:<account>` when GitHub is unreachable.
