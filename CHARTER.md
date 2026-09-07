# 📜 Charter of Delegated Authority — Agentopoly Cookbook & Fleet

**Grantor:** the captain (Klappy). **Stewards:** the crew agents flying under `AGENTS.md` — Claude, Grokbot, and any agent the captain seats.
**Ratified:** 2026-09-07 by captain direction in-session ("It's yours. Merge. … I want the agents to work together to maintain this as best you see fit.")
**Pattern borrowed from canon:** `klappy://canon/delegating-responsibility-over-a-project` (stewardship charter · gated autonomy · recorder + debrief) and `klappy://canon/decisions/models-do-not-mutate-canon` (bounded, revocable, sub-scope only). On any conflict, canon wins and this charter gets re-cut.

## 1. Scope of the grant
Standing authority over:
- this repository (`klappy/agentopoly-cookbook`) — docs, recipes, journal, fleet registry;
- play of the flagship account and every fleet account registered in `fleet/README.md`, **within the standing rulings** in `docs/strategy.md` §2.3.

## 2. What stewards may do without a ruling ✅
| Area | Delegated |
|---|---|
| 🎲 Play | Any move that follows a recipe and the standing rulings: check-ins, land grabs at list, completing proven sets, building to L3, selling dead singles, taking unowned airports inside the corridor. |
| 🧪 Experiments | Spend up to **M$500 per session per account** answering an item in `docs/open-questions.md`, journaled as `[O]` with the receipt. |
| 📚 Repo | Open **and merge** PRs that add/refine recipes, docs, journal entries, fleet registry rows — after in-session validation (§4). Squash-merge; attribute per canon D0019. |
| 🆕 Fleet | Bootstrap new support accounts via Recipe 06 and register them; assign non-overlapping clusters. |
| 🔁 Maintenance | Reconcile `docs/rules-observed.md` with new receipts; promote a repeated `[L]` into a recipe; retire a recipe the receipts contradict. Every PR updates the docs it affects — no drift. |

## 3. Reserved to the captain ⛔ (ask, show numbers, stop)
- Adding, removing, or rewording a **standing ruling** (§2.3). Stewards may *propose* one as `[D-proposed]` in the journal.
- Paying a **buyout**; selling a **built** city; leaving the Americas corridor; any single spend > **M$1,000** outside a recipe.
- Rent flows between fleet accounts as income; fleet size beyond what the registry lists; any action on real-world accounts (X, GitHub org, money) beyond the in-game quests.
- Anything in the **captain's authorial voice** (README tagline, public posts). Crew voice is delegated; his voice is not.
- Revoking or amending this charter.

## 4. Gated autonomy — the gate is the go
Before a merge or a non-recipe move, the steward clears, in proportion to stakes:
1. **Explore** — `status`/`activity`/`city_info` receipts in hand (never recall).
2. **Plan** — which recipe, which ruling, what cash after.
3. **Execute** — one action, one receipt.
4. **Validate** — numbers in the doc match the receipts; links resolve; `oddkit_challenge` for anything that changes strategy text.
5. **Promote** — merge / act. Journal it.
A docs typo clears in a sentence; a new recipe clears with a receipt; a ruling change never clears without the captain.

## 5. Recorder and debrief
- **Black box:** `journal/YYYY-MM-DD-<agent>-<account>.md`, DOLCHEO, append-only, one per session. Encode with oddkit when available; the file is the storage.
- **Debrief:** a failure becomes an `[L]`, and the same PR turns it into a recipe line or a doc correction. No blame, no repeat. The first officer's cash-floor error (2026-09-06) is the founding example — it is in the journal against its own author.
- **Cross-agent maintenance:** stewards read the newest journal before acting; a `[D-proposed]` or `[O-open]` left by one agent is the next agent's first task if it's in scope.

## 6. Revocation and conflict
The captain may narrow, suspend, or revoke this grant at any time, in any channel; the steward records the revocation in the journal and stops. If two stewards disagree, the receipts decide; if receipts don't, the question goes to the captain as an `[O-open P1]` — not to a coin flip.

## 7. Attribution
Commits and merges are attributed to the captain's identity (canon D0019: attribution wins); the acting agent signs the journal entry. PRs are assigned to the captain for visibility, not for required review.
