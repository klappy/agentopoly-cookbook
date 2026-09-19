# Fleet constraint types — spell-out and live snapshot

> Charter (`fleet/DIRECTIVE-2026-09-19.md`) names the **kinds** of constraint. This file spells each kind out and holds the **live snapshot**. Update the snapshot without amending the charter. Types are existing cookbook doctrine — not new game mechanics, not today's board. Prefer — awaiting Serve.

Charter: [`fleet/DIRECTIVE-2026-09-19.md`](DIRECTIVE-2026-09-19.md). Cadence still in force: [`fleet/DIRECTIVE-2026-09-10.md`](DIRECTIVE-2026-09-10.md).

## Summary
Nine primary constraint types, each already named in `docs/rules-observed.md`, `docs/strategy.md` §2.3, `fleet/DIRECTIVE-2026-09-10.md`, or the halt vocabulary. Seats treat the type as durable; they treat §Live snapshot as a dated board note that can go stale. Do not invent a baseline, a Serve, or a workaround.

## Types — what / why / how seats treat them

### Bank / city cap
**What.** Bank-bought cities and airports are capped (`docs/rules-observed.md` §1.2: 12 cities / 4 airports from the bank; licences widen the cap). Buyouts "never count against your cap" is a later rules line — verify live `rules`, do not invent.
**Why it binds.** A slot spent on a dead single or an uncompletable country is a slot not spent on a lockable set.
**Treat.** Fill slots toward complete sets and hubs under own tiles. Do not hold singles from two countries at once when one can lock (`fleet/DIRECTIVE-2026-09-10.md` §1).

### Set completeness / set-lock
**What.** Own every city of a country → rent ×2, buyout-immune, building unlocked (`docs/rules-observed.md` §1.2). "Lock" is the 09-10 cadence word for completing the set.
**Why it binds.** An incomplete set is a buyout target. Dumping a complete set to free slots trades immunity for a maybe.
**Treat.** Verify `x/N` on the first buy. Complete the set. Do not sell a locked set to expand unless the captain cuts a path.

### Rules-hash / baseline gate
**What.** Strip-normalized sha256 of the raw MCP `rules` text vs the plated baseline (`docs/rules-observed.md`; `fleet/DIRECTIVE-2026-09-10.md` §5; `skills/references/halt.md`).
**Why it binds.** A hash move means the rulebook moved. Strategy written against the old text may be wrong.
**Treat.** Call-zero hash every wake. Halt on mismatch after strip-only recompute. Do **not** invent a baseline from the chair.

### Streak integrity
**What.** One travel/buy/build per local day keeps 🔥 (`docs/rules-observed.md` §Every day). A missed wake costs the streak (`docs/HANDOFF-claude-fleet-to-grokbot.md`).
**Why it binds.** Streak is free compounding (card odds, landmarks, freezes). It dies from inaction, not from a rival.
**Treat.** Bank the day on an own-tile move when the streak is not yet counted. Do not invent hops to "force" a silent daily-block (`docs/rules-observed.md` §Failure Modes).

### Protected holdings (L3 locks)
**What.** A built city / L3 engine is not tithe-fodder and not a slot-freeing ATM (`docs/strategy.md` §2.3 *Tithe surplus only — never sell engines*; AGENTS.md: never sell a built city without a captain ruling).
**Why it binds.** Bankruptcy returns every property to the bank. Selling L3 to expand or to feed the flagship is how an engine dies.
**Treat.** Hold L3. No L3 sell to free a slot unless the captain cuts. Tithe from surplus cash only.

### Hub scarcity
**What.** Airports are finite chokepoints (rulebook: 60 hubs; fee scales with owner hub count). Unowned list-price hubs do not refill (`docs/strategy.md` §2.3 *Scarce before safe*).
**Why it binds.** Cash refills at salary. A hub taken by a rival does not.
**Treat.** Grab unowned airports at megacity gateways inside the corridor at list. Hub + L3 city is the stack. A hub on an uncompletable single is a hub for sale at 2×.

### Energy / customs / heat
**What.** Energy: 12 max, 1 per move (`docs/rules-observed.md` §1.2). Customs hold: a tool-given wait — do not poll faster than once a minute (recipe + session etiquette). Heat: buyout heat → customs holds + fee surcharge (`journal/2026-09-13-claude-fleet-ooda.md`); rival retaliation is also called heat (`docs/rivals.md`).
**Why it binds.** A move you cannot take, or a hold you work around, is how seats invent and how the operator sees a pattern.
**Treat.** Stop when energy is short (`fleet/DIRECTIVE-2026-09-10.md` §4: energy < 3). Wait out customs. Report heat; do not route around it.

### Contract windows
**What.** Three rotating contracts per local day; third unlocks 12h after local midnight; all three = perfect day (`docs/rules-observed.md` §Every day).
**Why it binds.** A contract that asks for a doctrine violation is a trap with a payout.
**Treat.** Chase only where the contract coincides with expand/lock/build (`docs/strategy.md` §2.3 *Contracts never override doctrine*). Let the rest expire.

### Licence gates
**What.** Empire licence ladder widens bank caps (`docs/rules-observed.md` 2026-09-13 plate; `empire`). Licences are NW-negative; land is not (`docs/rivals.md`, `journal/2026-09-16-claude-fleet-ooda.md`).
**Why it binds.** A licence with nothing proven to fill is dead spend. Magnate-class rungs have asked for buyouts — a standing "never" unless the captain re-prices.
**Treat.** No seat buys a licence from this file. Licence spend is a captain ruling. See also §Invest for the future.

## Invest for the future — how seats treat spend
Charter §3. Rent engines (complete sets at L3 + hubs) compound; cash sitting idle does not. A licence is NW-negative and a **captain ruling** — take it only when it unlocks more rent engines, not to look busy or to hide cash. Do not sell an L3 engine to fund a this-hour look. Live board stays in §Live snapshot.

## Live snapshot
**Snapshot — not law.** Dated board notes. Update this section without amending `fleet/DIRECTIVE-2026-09-19.md`. Retract when a later `status` / journal contradicts. Seeded from captain HOLD+EDIT 2026-09-19 via CoS — **not** a seat `status` re-read this recut.

- **Sets / hubs / cities over cash.** Land is scarce; cash refills. Do not sit idle cash while a list-price hub or a proven set is open inside doctrine.
- **Protect live streaks:** Ceviche 🔥10 · Auggie 🔥3.
- **Ceviche SET LOCK.** Wait for a captain cut if expand unlocks **without dumping Peru L3**. Do not sell Peru L3 to free slots (prior receipt: `journal/2026-09-12-ceviche.md` — 12/12, Peru L3 held, "No Peru sell").
- **No invent baseline.** Do not invent a rules-hash baseline, a workaround, or a Serve. Report; do not patch around.
