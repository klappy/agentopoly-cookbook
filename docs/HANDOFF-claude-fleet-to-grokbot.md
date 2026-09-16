# HANDOFF — Claude fleet lineup → Grokbot (captain ruling 2026-09-16)

Any runner that can hit two HTTP MCP endpoints can fly this lineup. Grokbot already runs Otto/Auggie/CoS/EA under this cookbook; this doc adds the three Claude-flown seats so the whole fleet keeps one clock. **Minimum viable wake = salary + one own-tile move per seat.** Salary caps at 12h; a missed wake forfeits ~M$1,200 per seat and the streak. Running that much beats running nothing (captain, 09-16).

## Lineup
| Seat | Id | State (09-16 00:4xZ) | Engine |
|---|---|---|---|
| **Klappy** (flagship) | `9513d290-56b0-4305-9429-3f9bfe1d3420` | Osaka · Tycoon 19/20 · 5/6 hubs · CA/JP/MX/UY/ZA all L3 · ventures 5/5 | **Venture lap**: Tokyo (hotel 80/h) → Mexico City (hotel 80/h) → Johannesburg (café 48/h) → Cape Town (hotel 48/h) → Montevideo (café 19/h) — own tiles only, every ≤12h; tills go stale/raidable at 6h |
| **HomestarRunner** | `06f54e6c-ba65-4452-8087-e85e6e37ebe8` | Lilongwe · Landlord 14/16 · 1/5 · KE/MW/MZ/ZW/ZM all L3 | Own-tile cab per wake; fill 2 slots with a proven ≤2-city set if one appears within cab reach |
| **HomestarRunner-2** | `e8469172-9871-4d41-9d8b-1588261df3c3` | Mwanza · Landlord 11 cities · 2/5 (Addis, Dar) · ET/SA/SD/TZ L3 · Dar café | **Next: Burundi** — Gitega (M$100) + Bujumbura (M$160), both one cab from Mwanza, then `build` ×3 (M$130 each) |

## Access
- Endpoint `https://agentopoly.lol/mcp` — JSON-RPC `tools/call`, SSE responses, `Authorization: Bearer <token>` **or** `?token=<token>` in the URL. Set a User-Agent (bare python urllib gets a Cloudflare 403; curl is fine).
- Tokens: HomestarRunner and HomestarRunner-2 are in the captain's private project files (`HOMESTARRUNNER-TOKEN.md`, `HOMESTARRUNNER-2-TOKEN.md`) — never in this repo. **Klappy has no raw token yet**; the captain mints one at agentopoly.lol/me and hands it the same way. Until then the flagship flies only from claude.ai (connector).
- **One key per seat, shared by every runner.** Minting a new key at agentopoly.lol/me rotates the old one (09-16: the claude.ai connector died the moment the captain minted Klappy's key). Never re-mint to "add" a runner — copy the existing key.
- oddkit `https://oddkit.klappy.dev/mcp` for `oddkit_time` and the operating contract.
- Repo write: a Git Auth `github_token` (contents + pull_requests write) or the repo attached with push. **If unavailable, fly anyway** and leave the journal for the next chat sweep (`docs/fleet-ooda-bootstrap.md` header).

## The loop (see `docs/fleet-ooda-task-prompt.md` for the full text)
0. `rules` → strip-only sha256 of the text block must equal `63c31c7cfa27`; mismatch = halt, read only.
1. Per seat: `notifications` → `collect_salary` → `status` → one move onto an **own** tile (flagship: the lap; it banks tills on arrival) → take whatever contract that move drops.
2. Wake A after 00:00Z, Wake B after 12:00Z (second-shift contract unlocks 12:00Z → perfect day +M$150/seat).
3. Journal DOLCHEO to `journal/<date>-<runner>-fleet-ooda.md`; PR; merge under CHARTER §2.

## Nevers (unchanged)
No buyouts · never sell land · no new accounts · no money routed between fleet seats · no landing on a rival L3/hub tile while loaded · **no card-hunting on the flagship** (Currency Crash −10% of cash) · no singles under an unset hub (Lagos lesson: a hub without its set is for sale at 2×).

## Halts
`skills/references/halt.md`. Report the row verbatim, note what was NOT done, fly the other seats' minimum wake unless the halt is the rules hash.
