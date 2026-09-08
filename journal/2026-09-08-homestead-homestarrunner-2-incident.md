# Agentopoly — DOLCHEO Journal — 2026-09-08 — Claude (Sonnet 5, Cowork session) — Homestead v1 — INCIDENT: accidental duplicate seat

Format: `[TYPE] title — body`. D decision · O observation · L learning · C constraint · H handoff · O-open Pn.

🛑 **This session created a second, unauthorized player account for the same Homestead v1 experiment. Reporting in full, not spinning it — this is exactly the "one human, one player" risk the whole Homestead test exists to avoid.**

## What happened
This Cowork session boarded from a stale local clone of `agentopoly-cookbook` (fetched ~23:16Z the previous day) and never re-fetched before acting. It had no visibility into `main` having moved on: a **different, earlier session** (the "chat sandbox," per `docs/homestead-kickoff-claude.md`) had already minted and played the real **HomestarRunner** seat — Kenya 4/4 @L2 + Nairobi hub, cash M$520 as of 2026-09-07 23:52Z, registered in `fleet/README.md`.

This session, working from stale state, called `join_game` with the same name. The server returned **HomestarRunner-2** (auto-suffixed on collision) instead of refusing. When `status`/`look_around` then showed Kenya fully owned by "HomestarRunner," this session concluded — wrongly — that it was an unrelated coincidental player with a popular name, and proceeded to build an entirely separate empire under HomestarRunner-2: Mogadishu (Somalia, single-city, no set), then Dire Dawa + a buyout of Addis Ababa (Ethiopia, complete set + hub, built to L2). Only afterward, on `git fetch` to push this journal, did the truth surface: `docs/homestead-kickoff-claude.md`, `fleet/README.md`, and `journal/2026-09-07-homestead-homestarrunner.md` on `main` all identify HomestarRunner as this same captain's already-boarded seat, played from a different session.

## Flight log (UTC) — what HomestarRunner-2 actually did before the mistake was caught
| Time | Action | Receipt |
|---|---|---|
| 00:01 | `join_game` name=HomestarRunner → server returned **HomestarRunner-2** (collision) | M$1,500, home Nairobi, id `e8469172-9871-4d41-9d8b-1588261df3c3` |
| 00:01–00:03 | `status`/`look_around`/`city_info` from Nairobi — Kenya fully HomestarRunner's (L2, complete, hub) | Misread as "unrelated coincidental player" — **this was the error** |
| 00:03–00:07 | Bought Mogadishu (Somalia, M$160, single-city/no-set); traveled to Dire Dawa (bought M$100) then Addis Ababa; bought the hub (M$200) and bought out Addis Ababa from Vanguard_406 (M$480, legitimate — Vanguard_406 held no complete set) | Ethiopia locked: complete 2-city set + hub. Referral bonus (M$100 to this seat, M$100 to Klappy) fired because the flagship ref was used at join. |
| 00:07 | `build` ×2 on Ethiopia (M$170 each) | L2. Cash M$398. Stopped before L3 to hold the M$300 cushion. |
| 00:09 | `git fetch origin main` while preparing to push this session's own journal | **Discovered** `docs/homestead-kickoff-claude.md`, `fleet/README.md` line 38, and `journal/2026-09-07-homestead-homestarrunner.md` — proof HomestarRunner is this captain's own, already-boarded, already-registered seat |

## Current real-world state (both accounts are live and real — verify before acting further)
- **HomestarRunner** (id `06f54e6c-ba65-4452-8087-e85e6e37ebe8`) — the intended seat. Kenya 4/4 @L2 + Nairobi hub, cash ~M$520 as of the other session's last report. This is the one `fleet/README.md` and the kickoff doc treat as canonical.
- **HomestarRunner-2** (id `e8469172-9871-4d41-9d8b-1588261df3c3`) — **this session's accidental duplicate.** Ethiopia complete @L2 + Addis Ababa hub, Mogadishu (Somalia, no set), cash M$398, net worth M$1,438, rank #89. Token exists only in this Cowork session's ephemeral sandbox — never printed, journaled, committed, or echoed, per standing instruction.

## Artifacts

[C] **Root cause:** this session acted on a stale git clone and treated a live in-game observation (an owned Kenya) as sufficient grounds to conclude "unrelated player" without first re-checking whether `main` had moved. The correct move at that point — "the site I scouted is already built by someone with our exact intended name" — should have been an immediate hard stop and a `git fetch` / re-read of `fleet/README.md`, not a plausibility judgment call. **This is the actual doctrine gap, not the single-city-set mistake noted below.**

[C] **Second, independent mistake this session made and already partially corrected in-session:** treated a single-city country (Somalia) as a completable "set." It is not — `status` labels it explicitly "(single-city country, no set)": no double rent, no `build`, no buyout immunity. Minor in isolation (M$160 exposure), but compounds the duplicate-seat problem since it's now also property on the wrong account.

[H] **Handoff — decision needed from the captain, not guessed around:** HomestarRunner-2 is real, funded (M$398 cash, M$1,438 NW), and holds a legitimately-completed set (Ethiopia) with a real cross-account referral bonus already paid to Klappy. Doing nothing further with it avoids compounding the problem, but the account still exists and was created by the same operator as HomestarRunner and Klappy. Options, none taken without your ruling:
  1. **Abandon HomestarRunner-2 in place** — no further logins, no builds, no tithes, no travel. It sits as an inert, fully-paid-for holding. Lowest-risk, but two accounts under the same captain permanently exist in the world.
  2. **Disclose to the game operator** proactively (there may be a contact path via the Agentopoly site/rules) rather than waiting to be found — consistent with the project's whole "don't be the drone farm" ethos.
  3. Something else the captain rules.
  This session took no further action on HomestarRunner-2 after discovering the collision and is not touching it again pending a ruling.

[H] **HomestarRunner (the real seat) is unaffected** — this session never touched it, has no token for it, and made no claims on cities it already holds. Its own next steps remain exactly as `docs/homestead-kickoff-claude.md` already lays out (build Kenya L3 at cash ≥ M$600, then scout Tanzania/etc. with the single-city caveat now known).

[L] **For canon:** `docs/homestead-session-prompt.md` / `HANDOFF-homestead.md` should add a step 0 to every session, not just the first: `git fetch` (or re-read `fleet/README.md` fresh) *before* concluding a target site is unowned or owned-by-a-stranger, specifically because `join_game` silently auto-suffixes name collisions instead of refusing — the collision itself should be read as "this exact name may already be one of ours," not brushed past.
