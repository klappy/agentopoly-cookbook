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

---

## Wake 2 — 12:47–13:1xZ (chat) — halt cleared by captain ruling · reset cycle · licences

`oddkit_time` 2026-09-13T12:47Z. Read-only scout first (`empire`, `jobs`, `league`, `world_news`, leaderboards), then the captain ruled.

### Observe (new surfaces, live)
- **Jobs (3/wk):** Grand tour 3 countries +M$500 · Jetsetter 5,000 km +M$400 · Courier Bangkok 6h +M$300 (LVJ L3 — skip). Crates: cash / energy / voucher / streak freeze / **deed ticket (free city)**.
- **League:** Bronze wk 2957 cohort 1 (13). LVJ +M$3,357 gain, **+M$4,240 rent, 44,352 km**. Our seats +M$0 / +M$0 / −M$372. Top 2 promote (+M$300).
- **World news:** 3 events/day — booms (rent ×3), airport strikes (no fees; Addis 18:47Z), storms (flights grounded), festivals, summits.
- **Empire:** Landlord M$2,500 needs 2 sets + **1 building level counted since the patch**. Badge counters reset (Tycoon 0, Architect 0 on every seat). **Heat:** each buyout +1; hot = customs holds + fee surcharge.
- **Boards:** LVJ **5 airports** (licensed already) · LVJ + digyvijay **5 sets**. Klappy while-away: **+M$440 fees** — bob_the_builder M$200 at **Mumbai**, digyvijay M$240 at Buenos Aires. Traffic is back; the Mumbai hub paid for itself in <24h.
- Buyouts no longer count against the bank cap: Klappy 11/12 bank, HR-2 10/12 bank.

### Rulings (captain, 2026-09-13 ~13:00Z)
[D] **Halt cleared** by captain action under the new rules; **re-baseline `rules` hash to `63c31c7cfa27`** (strip-only). Additive change, same shape as 09-10.
[D] **Reset cycle on the flagship:** sell one city in each set, buy it back, rebuild to L3 — a known loss, to register post-reset set completions and building levels. Executed on all four sets.
[D] **Licence all three seats to Landlord (M$2,500 each).** Executed.

### Flight log (UTC)
| Time | Seat | Action | Receipt |
|---|---|---|---|
| 12:5x | Klappy | `collect_salary` | +M$312 (**25% rate**, M$900 forgone). Cash M$29,518 |
| 12:5x | Klappy | Tokyo: `sell` → `buy` → `build`×3 | +M$920 / −M$400 / −M$1,440. Contract Complete a set +M$150 · Tycoon I +50 · Architect I +50 · II +100 · On Tour I +50. 🔥 Day 3 |
| 13:0x | Klappy | ✈ Mexico City (M$153) · 🃏 Consular Fees −M$300 · 🃏 Lost Wallet +M$150 · 📋 Travel 1,000 km +M$100 | then sell/buy/build×3: +M$800 / −M$400 / −M$1,200 |
| 13:0x | Klappy | ✈ Toronto (M$73 + **M$200 fee to flujo**) · 🃏 Tourism Grant +M$400 | sell/buy/build×3: +M$600 / −M$240 / −M$960. Tycoon II +100 · Architect III +200 |
| 13:1x | Klappy | ✈ Buenos Aires (M$130, own hub) · 🚕 Montevideo (M$18) | sell/buy/build×3: +M$350 / −M$160 / −M$540 |
| 13:1x | Klappy | `empire` | 4/4 sets · **12/1 levels** · ready. **Cash M$29,518 → M$27,324 (−M$2,194 for the cycle, all-in)** |
| 13:1x | Klappy | `empire action=license` | **Landlord.** Cash M$24,824 · cap 16/5. Next: Tycoon M$6,000 (20/6) — already eligible (4 sets + Google-verified) |
| 13:1x | HR | `collect_salary` +M$39 (37%) · `license` | **Landlord.** Cash M$3,480 (under the M$3,600 line) · Tycoon needs Google-verify **or 3 activated recruits** |
| 13:1x | HR-2 | `collect_salary` +M$1,272 (full rate — was under the line) · `license` | **Landlord.** Cash M$1,962 |

### Artifacts
[C] **Selling one city sells every building level in that set first** (Tokyo: +M$720 for 3 Japan levels). A reset cycle costs ~50% of the set's build spend + 50% of the city price, less any contract/badge payouts. Receipts above, four sets.
[O] Means-test rates observed: 25% at M$29k, 37% at M$5.9k, **100% at M$3.2k**. The line is M$3,600 cash; the rate falls with cash above it.
[O] Tycoon tier (M$6,000 → 20/6) gates on Google-verify **or 3 activated recruits** — the Homesteads' path is recruits, which is the Invite quest run legitimately.
[L] The 09-11 orientation ("hub fees multiply zero") was wrong within 48h: the operator's jobs restarted traffic and Mumbai earned M$200 on day one. Doctrine held (buy empty hubs at list); the *read* was too confident. Plate: traffic is a state, not a trend — re-measure before pricing any hub.
[H] **Klappy** — Montevideo · M$24,824 · Landlord 16/5 · 12 cities / 4 airports · 4 sets L3 · 🔥3 · 2/3 today · **4 city slots + 1 airport slot open** · Tycoon ready at M$6,000.
[H] **HR** — Victoria Falls · M$3,480 · Landlord · 11/12 → **5 slots open** · 1/4 → 5 airports allowed · 🔥3 not counted today.
[H] **HR-2** — Addis Ababa · M$1,962 · Landlord · **6 slots open** (10 bank + 2 taken) · 2/5 airports · 🔥3 not counted today · free fare held.
[O-open P1] Fill the new slots: proven ≤4-city sets within reach of each seat, hubs inside them. Klappy's are the highest-value (a fifth set + fifth hub) and the flagship has never scouted outside the Americas/Japan corridor — that scout is the next wake.

🏁 Halt cleared and re-baselined. No operator notice. Licences on all three seats.
