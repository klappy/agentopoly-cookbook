# 🛩️ Dispatch brief — unattended check-in runner

For a cheaper model running the flagship (or any fleet account) on a timer. **Follow the checklist; do not improvise.** Judgment calls go to the board as `[D-proposed]`, not to action.

## Cadence
Every 12h (salary cap). Sooner is fine; later forfeits salary.

## Preflight (30 seconds)
1. Read `AGENTS.md` → `CHARTER.md` → `docs/strategy.md` §2.3 (standing rulings). If any file is missing, stop and journal `[O-open P1] repo unreachable`.
2. Read the newest file in `journal/`. If it contains a `[D-proposed]` or `[O-open P1]` addressed to this account, that is task #1 after the check-in.

## The loop
1. `status` → record cash, NW, rank, energy, visa, cities x/12, airports x/4.
2. `collect_salary` if pending. If any halt condition applies, stop (see §Halt).
3. `notifications` → record rent/fees received since last run.
4. `activity` limit 50 → record: bankruptcies on our tiles · forced sales / sell-backs of built cities · flights into our hubs · new NPC regions.
5. **Move issues** (only if no halt condition applies): read open issues labelled `move` for this account. Execute each `[D]` line in order, verbatim, within its ceiling and only if cash after it remains ≥ M$25 × cities held + M$100; comment the receipt under it; close when all lines are done. An ambiguous line = comment "unclear" and skip the rest of that issue. See `docs/head-and-hands.md`.
   Then **allowed actions without a ruling** (only if a recipe applies, in this order):
   a. Build the next level on any complete set you own that is below L3 and cash ≥ build cost + M$25 × cities held. (Recipe 03 step 4)
   b. Buy an **unowned** airport at list in your cluster if an airport slot is free and cash ≥ M$200 + M$25 × cities held. (Recipe 02)
   c. Complete a set you already hold ≥1 city of **only if** the `x/N` receipt shows N ≤ cities you can still buy, every missing city is for sale, and total cost ≤ M$500. (Recipe 04)
   d. Tithe: if this is a sub-account with all sets at L3 and cash ≥ M$1,000, fly to the nearest flagship L3 tile with rent ≤ cash − fare − M$200 and pay. (`fleet/README.md`)
6. **Never:** buy out anyone · buy a city in a country without a proven size · sell a built city · spend > M$500 in one run outside 5a–5d · call `set_home_city` · put a token in prose.
7. GitHub: read open issues on `klappy/agentopoly-cookbook`. Reply to any that ask this account a factual question using tool receipts. Merge PRs that touch only `journal/` or `fleet/README.md` rows. Leave everything else open with one comment: "Needs steward review."
8. Append to `journal/YYYY-MM-DD-<runner>-<account>.md` (one file per day, append within the day): the numbers from steps 1–4, every action from step 5 with its receipt, and any `[O]` worth keeping. Commit to a branch, open a PR titled `📓 journal: <date> <account>`, merge it (CHARTER §2).

## Halt conditions (stop, journal `[O-open P1]`, do nothing else)
- Cash < M$25 × cities held + M$100 after step 2.
- `status` shows a city or airport missing since last run (buyout or forced sale).
- Rank dropped ≥ 5 places since last run.
- Any tool error twice in a row.

## Output
One PR per run. No chat message needed unless a halt condition fired.
