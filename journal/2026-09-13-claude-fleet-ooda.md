# Agentopoly — DOLCHEO Journal — 2026-09-13 — Claude (Cowork) — Klappy · HomestarRunner · HomestarRunner-2 — OODA wake → 🛑 HALT (rules changed)

Format: `[TYPE] title — body`. D decision · O observation · L learning · C constraint · H handoff · O-open Pn.

`oddkit_time` **2026-09-13T12:36:39Z** (23h48m since the last Claude fleet wake, 09-12 12:48Z — over the 4h stand-down floor). Boarded `klappy://canon/bootstrap/model-operating-contract` via `oddkit_get` on the raw oddkit MCP (the oddkit connector is not enabled in this chat — see `[O]` below); re-read `fleet/DIRECTIVE-2026-09-10.md`, `skills/references/halt.md`, `CHARTER.md` and the 09-12 journal on cookbook main `e9d676c` before any game call. Homesteads via raw MCP (tokens per captain override 09-08, never echoed). **Klappy seat not flown** — Agentopoly connector not enabled in this chat.

## 🛑 HALT — `rules` sha256 ≠ baseline

`🛑 HALT — rules sha256 mismatch — strip-normalized sha256 of the raw MCP \`rules\` text block (HomestarRunner, 12:37Z) = \`63c31c7cfa27\`, baseline \`3d978ac96da2\` (directive §5 / config.md); recomputed once with strip-only normalize on the text content item alone, still mismatched — NOT done: no travel, no buy, no build, no streak move on any seat; HR-2 salary NOT collected (M$1,200 at cap, forfeiting M$100/h); Klappy seat not touched at all.`

Sequence error, owned: HR `notifications` → `collect_salary` (+M$728) → `status` ran **before** the hash check. Directive §4 lists Observe as `notifications → daily → status`; the hash lives in §5 (halts) and I read it as a per-wake tripwire rather than the first call. It should be the first call — see `[L]`.

## Flight log (UTC)
| Time | Seat | Action | Receipt |
|---|---|---|---|
| 12:36 | — | `oddkit_time` (raw) | 2026-09-13T12:36:39Z |
| 12:37 | HR | `notifications` | 📭 nothing. M$5,138 · NW M$9,038 · #12 · 🔥3 not counted today · 0/3 (hub landing / collect salary twice / spend M$300) |
| 12:37 | HR | `collect_salary` | **+M$728 (incl. M$41 streak bonus) — "Means-tested: paid at 57% (M$513 forgone) because your cash sits above M$3,600."** Cash M$5,866 · caps 23:45Z · contract *collect twice* 1/2 |
| 12:37 | HR | `status` | Victoria Falls (own, L3) · 12/12 ⚡ · NW **M$9,766** · #12 of **196** · **🏛️ Tourist** · 11/12 · 1/4 · KE/MW/MZ/ZW all L3 · new surfaces: 🧾 Jobs (3/wk, M$1,200 + crates) · 🏆 Bronze league #8/11 · 🧭 Deeds 0/7 · 🏅 Badges · 📰 World: airport strike at New York, next Addis Ababa 18:47Z · "💤 Salary at 37% — cash above M$3,600 idles" |
| 12:37 | HR | `rules` → sha256 | text block strip-only **`63c31c7cfa27`** ≠ `3d978ac96da2` — **MISMATCH** (recomputed once, same) → HALT |
| 12:38 | HR-2 | `notifications` (read-only) | 📭 nothing. M$3,190 · NW M$8,550 · #13 · 🔥3 not counted · 0/3 (complete a set / travel 600 km / new country) · **M$1,200 salary at cap** |
| 12:38 | HR-2 | `status` (read-only) | Addis Ababa (own hub, L3) · 12/12 ⚡ · 🎫 free fare held · "10/12 from the bank (12 cities with 2 taken)" · 2/4 · ET/SA/SD/TZ all L3 + Mogadishu · 🏛️ Tourist · Bronze league #7/12 · rival CoS M$0 ahead |
| 12:38 | HR | `leaderboard` (read-only) | #1 Klappy **M$36,906** · #2 Otto M$25,851 · #3 LVJ M$23,043 · #4 Shalini M$22,576 · #5 Real_Xaros M$20,304 · #12 HR M$9,766. Flagship guard: nearest non-fleet rival LVJ is M$13,863 behind — no guard halt |
| 12:39 | HR | `rules detail="full"` (read-only) | full rulebook text captured for the diff below |

## Artifacts

[O] **Rules changed between 09-12 12:47Z (hash MATCH) and 09-13 12:37Z.** Diff visible in the short `rules` text and on `status`, none of it in the 09-10 baseline:
- **Caps are now a ladder ("empire licence"):** 12 cities / 4 airports from the bank → each licence widens up to **40 / 12**, priced **M$2,500 → M$6,000 → M$12,000 → M$25,000 → M$50,000** ("and real play"); `empire` shows "the ladder, badges and heat". `buy` with `swap="<one you own>"` sells at the cap in the same move. Rank badge on status: **🏛️ Tourist** (pre-licence).
- **Salary is means-tested:** HR paid at **57%** (M$513 forgone) "because your cash sits above M$3,600"; status then reads "Salary at 37% — cash above M$3,600 idles. A licence or a venture puts it to work." Streak bonus now written as "up to +20%" (HR got +M$41).
- **New surfaces on `status`:** 🧾 `jobs` (3 offered this week, M$1,200 + crates) · 🏆 `league` (Bronze cohort, weekly, promotion ≤2, a named "rival") · 🧭 `deeds` (0/7, first = name your HQ) · 🏅 badges with paid rungs · 📰 `world_news` with **airport strikes** (no airport fees at a hub for a window — Addis Ababa, HR-2's hub, is scheduled 18:47Z) · 🎁 "4 starter quests open (M$3,500)" (was 3).
- **Rulebook mode label: "PERSISTENT mode."** Player count 196 (was 188 on 09-10).
- Full `rules detail="full"` text does **not** yet carry the licence/means-test/league/jobs wording — only the ten-line summary and `status` do. The long form still reads like the 09-10 rulebook (caps "12 cities and 4 airports bought from the bank", no salary tiers).

[O] **Every new mechanic points idle cash at the bank.** Means-tested salary above M$3,600, a M$2,500 licence as the suggested "Next", jobs, leagues, deeds. Directive §7 row "Idle cash at the top" named exactly this exposure (Klappy M$24.7k, Otto M$19k, EA M$10k idle cash) and the operator patched it from the salary side. HR (M$5.9k) and HR-2 (M$3.2k, right at the line) are both inside the tax. Klappy at M$28.8k cash is the most exposed seat on the board.

[O] **HR-2 status wording changed from "12/12" to "10/12 from the bank (12 cities with 2 taken)".** Holdings are unchanged (ET 2 + SA 2 + SD 2 + TZ 5 + Mogadishu = 12; 2/4 airports) — the "2 taken" are the two buyouts (Dar es Salaam ← Vanguard_407 and one more) that under the new caps text "never count against your cap". Not the halt signal "own seat missing a city or airport it held"; noting so the next wake does not misread it.

[O] **NW drift watch from 09-12 closes clean.** HR NW M$9,038 → M$9,766 = exactly the +M$728 salary; HR-2 M$8,550 → M$8,550 with no transaction. No further unreceipted valuation movement.

[O] **Traffic tripwire: fourth consecutive 24h window with zero rent, zero fees, zero buyouts on both Homestead seats.** HR-2 league line "+M$0 this week" is the operator's own receipt for it.

[O] **Access this wake.** Both the `oddkit` and `Agentopoly` connectors show `connected: true, enabledInChat: false` for this Cowork session (`ListConnectors`). Canon and `oddkit_time` were reachable on the raw `https://oddkit.klappy.dev/mcp` endpoint with no auth (`oddkit_get` served the operating contract; `resources/read` on the same URI returned "not found" — tools path works, resources path does not). The flagship has no raw-token path by design, so the Klappy seat's loop (notifications → salary → status) did not run. Klappy's salary caps 23:52Z per the 09-12 handoff; the halt makes that moot for this wake anyway.

[L] **Hash before you touch anything.** The directive's Observe line (`notifications → daily → status`) and its §5 hash tripwire are written as two lists; I ran the first and then the second, and one salary collection (HR, +M$728) landed under changed rules before the halt fired. Fix in the same PR: `docs/rules-observed.md` now says the strip-only hash is call **zero** of every wake, before `notifications`. Cost of the ordering error: none visible (salary is doctrine-allowed on every wake), but the receipt is against my own author line, per CHARTER §5.

[C] Under directive §5 and the 09-12 `[C]`, **no seat acts on a wake where the strip-normalized hash mismatches** — the halt is the session, the captain reads the diff and rules. Left on the table by the halt: HR-2 M$1,200 salary at cap (forfeits M$100/h until collected), today's streak on all three seats (counts until 00:00Z tomorrow — a later wake after the ruling can still take it), Klappy's whole loop.

[D-proposed] **Clear the halt as additive, same shape as 09-10, and re-baseline to `63c31c7cfa27`** — with two doctrine amendments for the captain to rule on, not for me to apply:
1. **Means-tested salary changes the "surplus" arithmetic.** Cash above M$3,600 now earns less salary, not more safety. Homestead doctrine (M$300 cushion, tithe only from surplus) still holds; what changes is that a locked seat sitting on M$5–6k is paying a tax for nothing. Options on the table: (a) hold cash anyway and accept ~40–60% salary; (b) buy a licence (M$2,500) only if the seat has a proven ≤5-city set to fill the widened cap — a licence with nothing to buy is dead spend; (c) `jobs` — unknown mechanic, unscouted, needs a read-only look before anyone takes one.
2. **The flagship is the most-taxed seat on the board (M$28.8k cash).** Receiver-mode doctrine says salary only; salary is now the thing being taxed. Directive §7 already predicted this row. The captain's call: does the flagship deploy into a licence + land (NW-neutral, per §7) or stay cash-heavy by rule.
Nothing in this proposal touches §2 (no new accounts, no money between seats) or §3 (no buyouts, no landing on fleet/rival L3 while loaded).

[O-open P1] **`jobs`, `league`, `deeds`, `empire` are unscouted.** All four are new tools/surfaces. Read-only calls (`empire`, `jobs`, `league`, `deeds` with no action) would plate them for the cookbook without acting — I did not call them this wake because the halt says stop, and "any tool refusal you don't understand" is itself a halt row. Next wake after the ruling: scout all four read-only on HR first, journal, then decide.

[O-open P2] **Airport strike at Addis Ababa 18:47Z.** HR-2's own hub loses its fee for a window. Unknown whether strikes also waive fees for the owner flying out, or affect rent. Watch `world_news` next wake.

[H] **Klappy** — not observed this wake (connector off in this chat). Last known (09-12 12:47Z): Tokyo · M$28,766 · NW M$36,466 · #1 · 12/12 · 4/4 · 🔥2. Leaderboard today via HR: **NW M$36,906**, #1, M$13,863 clear of LVJ.
[H] **HR** — Victoria Falls · **M$5,866** · NW M$9,766 · #12/196 · 11/12 · 1/4 · 🔥3 **not counted today** · 1/3 (collect twice 1/2; hub landing; spend M$300) · salary caps 23:45Z · 🏛️ Tourist · Bronze #8/11.
[H] **HR-2** — Addis Ababa · M$3,190 · NW M$8,550 · #13 · 12/12 (10 bank + 2 taken) · 2/4 · 🔥3 **not counted today** · 0/3 · 🎫 free fare held · **M$1,200 salary AT CAP, not collected (halt)** · 🏛️ Tourist · Bronze #7/12.

🏁 **HALT on all three seats — rules hash mismatch.** No operator notice about bots/rings/blocks on either Homestead. Flagship guard clear. Awaiting the captain's ruling on the `[D-proposed]` above; until then the next wake collects nothing and moves nothing.
