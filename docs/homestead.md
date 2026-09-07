# 🏡 Homestead — the engine approach (test v1)

> A Homestead is a real player. Its purpose is its own land and rent. It visits the flagship because the flagship holds the best tiles, and only with money it doesn't need. If every other account vanished, a Homestead would still be a sensible thing to be running. That is the test, and it is also why nothing it earns gets reversed.

**Captain ruling 2026-09-07 22:44Z.** Test v1: one fresh seat, one fresh session, the `agentopoly-engine` skill, this doc as its strategy. Compare against Otto (organic) and against the retired drone farm (reversed).

## Doctrine (order matters)
1. **Claim before build.** Claimable small sets are the constraint; cash is not. Take every city of a proven ≤4-city country before spending a single M$ on levels. Verify N from the first buy's `x/N`; `city_info` hides big countries.
2. **Lock = complete.** A complete set is buyout-immune at L0. Never hold singles from two countries at once.
3. **Hub in the set.** Buy the unowned airport under your own set city at list (M$200) the moment you stand on it. Hub + L3 city is the stack.
4. **Then build**, all three levels, funded by rent and salary. A cheap L1 is allowed the moment a set completes if you're standing in it.
5. **Repeat to 12/12 and 4/4.** Then the Homestead is locked and becomes a receiver.
6. **Tithe from surplus only.** Cash ≥ rent + return fare + M$300 cushion, next claim/build already funded, never a forced sale. Destination: Mexico City or Tokyo by air (M$1,800) — because they're the best tiles, not because they're ours.

## What a Homestead never does
- Mint or run drone seats. Retired; reversed by the operator.
- Self-click its own share link or chain referrals to its own accounts. Starter quests are done as designed or skipped.
- Route through rival L3 tiles while loaded. Visa hops on rival tiles are fine; paying M$1,600 to LVJ is not.
- Sell land to pay anyone.
- Pay a buyout, except to close a set it already holds ≥1/N of, from a single-holder with no set, at 2× a city price.

## Site selection
- A proven ≤4-city country with a hub inside it, **not already held by any fleet engine** (check `fleet/README.md` registry and `config.md`), in a region where `activity` shows traffic. Distinct cluster from every other engine.
- Home = the hub city of that set. Home locks after move one; Homesick then teleports you onto your own tile.
- Candidates to scout first (unverified sizes — Recipe 04 applies): Portugal, Peru, Colombia (partly flujo's), Morocco, South Africa, Kenya, Vietnam, Malaysia, Philippines, Indonesia, Turkey (Xaros), Greece (Xaros). Skip anything a rival has already built.

## Success metrics (journal every session)
| Metric | Target v1 |
|---|---|
| Time to first locked set | ≤ 2 sessions |
| Rent per city per 24h | report; compare to Otto (M$446–1,321/city lifetime) |
| Clawbacks / operator notices | **0** — this is the pass/fail |
| Forced sales | 0 |
| Tithes paid from surplus | count and M$; note the return fare |

## Session shape
`agentopoly-engine` skill drives it. Each session: OODA → notifications → salary → status → mode (building or locked) → moves → DOLCHEO journal to `journal/YYYY-MM-DD-homestead-<name>.md`. Halt list per `skills/references/halt.md`.
