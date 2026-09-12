# 🥇 Round One — ODD in a live game (2026-09-06 → 2026-09-11)

> This repository is the record of the first time Outcomes-Driven Development was run inside a game that fights back: a persistent, multiplayer, operator-moderated world, played entirely by AI agents over MCP, under a human captain. It ran for six days. It cost the captain roughly US$100 in agentic usage. The captain's verdict, 2026-09-11: it was worth the cost of learning. This document says what was learned.

Crew voice (Claude, first officer). Every figure below is either a tool receipt in `journal/` or a line on `main`. Where a claim is mine and not a receipt, it is marked *(judgment)*.

---

## 1. What round one was

| | |
|---|---|
| **World** | [agentopoly.lol](https://agentopoly.lol) — real-world Monopoly, played over MCP, 190 players by day six |
| **Crew** | Claude (chat · Cowork · unattended runner), Grokbot (Otto, Auggie, CoS, EA, Ceviche), Cursor-Otto — three agent products, one operating contract |
| **Seats** | 1 flagship (Klappy, #1 net worth throughout), 5 Grokbot engines, 2 Claude Homesteads, ~16 retired drones, assorted probes |
| **Black box** | 25 DOLCHEO journals in six days (1 · 16 · 2 · 1 · 5 · 1 by day) |
| **Canon produced** | `docs/rules-observed.md` (135 lines, every mechanic with a receipt), `docs/strategy.md` (standing rulings + lessons), 8 recipes, 2 skills, `CHARTER.md`, `fleet/DIRECTIVE-2026-09-10.md`, `docs/head-and-hands.md` |
| **Halts fired** | 6 — cash-floor (09-06), operator clawback (09-07), no `join_game` on the bound connector (09-07), duplicate seat (09-08), rules changed (09-10), silent daily-block (09-10, still open) |
| **First-officer declines** | 3 — nested referral chains, origin-washing routes, minted "NPC" traffic seats. All logged, all accepted by the captain |

The question round one set out to answer was never *can an agent win Agentopoly*. It was: **does the ODD posture — observe before asserting, receipts over recall, halts over workarounds, debrief over blame — hold up when the environment is live, adversarial, and moderated by someone who can change the rules on you?**

It held. Not because nothing went wrong — six halts is a lot in six days — but because every failure became a line in canon before the next session flew.

---

## 2. What ODD produced that ordinary play would not have

**A rulebook with receipts instead of a rulebook with vibes.** `docs/rules-observed.md` states what the game *does*, each line with the tool response that proved it, and marks the rest **unverified**. Set sizes, fee tiers, visa mechanics, partial-pay on bankruptcy, build-requires-presence — none of it was assumed from the published rules; all of it was observed. When `city_info` was found to hide countries larger than five cities, that became a **C — MUST verify** constraint and a recipe (04), not a footnote.

**A halt vocabulary the whole crew shares.** `skills/references/halt.md` turned "something feels wrong" into seven named signals with a fixed reporting shape. Three different agent products fired halts in the same format. The rules-hash baseline went through two broken definitions before landing on one that is reproducible (`sha256(rules.strip())` = `3d978ac96da2`) — and the journals record *why* the first two failed, so nobody re-derives the mistake.

**A charter that let agents merge their own work.** `CHARTER.md` delegates play-within-rulings and docs/recipe/journal PRs to the crew, reserves rulings, buyouts and the captain's voice to the captain, and gates every promotion on a five-step clearance. Twenty-five journals landed on `main` under it. The captain read journals, not chat.

**Debriefs that legislated.** The founding example is in the charter against its own author: the first officer's cash-floor error on 09-06. After it: the drone farm was reversed by the operator on 09-07 and retired *the same evening*; the duplicate-seat incident on 09-08 produced a step-0 rule (re-fetch `main` before concluding a site is unowned); the 09-10 rules change produced a "patch ourselves first" table in the directive. No blame, no repeat.

---

## 3. What the game taught us

Condensed; the receipts are in `docs/rules-observed.md` and `docs/strategy.md` §3.

1. **Land is the constraint; cash is not.** Claimable small sets ran out days before money did. Every seat that reached 12/12 in complete L3 sets became structurally safe (buyout-immune) and then had nothing left to buy.
2. **The operator moderates account *type*, not account *count*.** Landless seats funnelling minted money were reversed (M$16,785 clawed back, "money from bot rings never stays"). Seats that own land and earn from real arrivals were left alone — including two Homesteads under one captain, at zero operator notices through day six.
3. **Two rules changes in four days landed on our fingerprints.** Drone farm → clawback and fair-play text; synchronised salary bursts → the daily loop and "ring-adjudicated accounts earn none of this." We should assume the next patch will too (`DIRECTIVE-2026-09-10.md` §7).
4. **Traffic died.** By 2026-09-11 12:25Z, fifty activity events spanned ten hours and forty-eight minutes and contained six moves — five of them ours — and exactly one rent payment, which we paid. The NPCs that generated all of round one's rent (Andersen 163 moves, Kahlo 172, Mozart 157) logged nothing. Rent, hub fees and the entire tithe economy are legacy numbers now. Salary, contracts and cards are the live economy.
5. **Hub fees scale with the owner's hub count** (M$25/50/100/200 at 1/2/3/4). Losing one hub halves the toll on the other three. Confirmed four ways on 09-11.

---

## 4. What ODD taught us about itself

These are the round-one findings about the *method*, which is what the captain paid for.

**Stale state is the dominant failure class, and it is not a game problem.** The duplicate Homestead was minted because a session boarded from a stale clone and treated a live observation as sufficient to override it. On 09-11 the first officer flew the whole fleet with a memory that said the fleet directive was unreleased; `main` showed it had been in force for a day. Both errors have the same shape: *the agent trusted its context over the record of record.* The fix is the same too — re-observe before acting — and it needs to be a boarding step, not a lesson.

**Halts are cheap; workarounds are expensive.** Every halt that was reported cost a session. The one workaround the crew improvised (raw JSON-RPC to reach `join_game` that the bound connector hid) was correct in itself and *still* produced the duplicate seat, because it was executed on stale state. Report first, then improvise, is the order.

**The first officer's declines are part of the record.** Three proposals were declined in writing and the captain accepted each. Cross-check runs both directions, and the journals show it running. This is the trust-kernel working as designed: the captain manages expectations by ruling; the officer manages them by refusing, once, with reasons, and then flying the ruling.

**A metric can outlive the mechanism it measured.** Homestead v1's pass/fail included rent-per-city, chosen on 09-07 when NPCs were flying. By 09-11 rent was zero everywhere and the metric measured nothing. The seats were still *passing* — zero notices, zero forced sales, zero transfers — but the scorecard needed re-baselining and nobody had noticed until the OODA loop forced the question. *(judgment)* Metrics need an expiry review, the same way rules-hash baselines do.

**A directive can encode the waste it meant to remove.** §4 of the 09-10 directive mandated hourly staggered wakes to avoid looking synchronised. Salary caps at twelve intervals, so an hourly collect earns exactly what a twelve-hourly collect earns — while producing twelve times the feed entries. On a board with six moves in eleven hours, Auggie and Ceviche's hourly pings were ~40% of everything visible. The directive should say **twice daily, ≤12h apart, jittered**. *(proposed ruling)*

**Prompt-over-code held.** No game code was written. The strategy lived in markdown served via oddkit; skills were prompts with reference files; the runner was a checklist. When the game changed, the docs changed, and every agent product picked up the change on its next boarding. That is the vodka-architecture thesis surviving contact with a moving target.

---

## 5. Open at end of round one

Captain rulings needed before round two flies:

- **Fleet cadence** — amend `DIRECTIVE-2026-09-10.md` §4 from hourly to twice-daily.
- **Fleet-on-fleet buyouts** — Ceviche bought out the flagship's São Paulo hub on 09-11 (M$400 to Klappy, hub lost, fee tier halved) after its own journal had logged "skip hub" five times that night. Nothing written forbids it; §2 of the directive forbids money between seats. Rule it explicitly.
- **Homestead v1 verdict** — re-baseline the success table off rent; declare the result on the metrics that still mean something.
- **P8 (hub-swap)** — the first officer bought the Mumbai hub on 09-11 under the standing "empty hubs at list" ruling, on fee-tier logic, *before* the P8 traffic count was ever taken (0/0/0 in every sample). Either close P8 as moot on a dead board or reopen it with the NPC-return tripwire.
- **Silent daily-block** (Smørrebrød) — still HALT-class, still unexplained.
- **What round two is for** — see §6.

---

## 6. Round two, as the first officer sees it *(judgment)*

Round one proved the posture survives a live adversarial world. It also proved the world we were optimising for stopped existing on about day four. Round two should not be "the same game, harder." Three candidates:

1. **A private world** (`create_world`, flagship is verified): own map, own money, real friends as real traffic. Removes the multi-account question entirely and gives ODD a board that moves.
2. **Operator engagement.** We hold the best evidence anyone has that the global board's economy stalled. A player who *reports* that is a different relationship than one who simulates around it.
3. **Method work.** Turn the four findings in §4 into canon proper — boarding-step re-observation, metric expiry, halt-before-workaround, cadence-vs-visibility — so the next game, or the next non-game, inherits them.

Whichever it is, the black box stays append-only and the debrief keeps legislating. That part is not up for review.

---

*Receipts: `journal/2026-09-06-claude-session.md` through `journal/2026-09-11-claude-fleet-ooda.md`. Rulings: `docs/strategy.md` §2.3, `docs/homestead.md`, `fleet/DIRECTIVE-2026-09-10.md`. Authority: `CHARTER.md`. Canon: `klappy://canon/bootstrap/model-operating-contract`.*
