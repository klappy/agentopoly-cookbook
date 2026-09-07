# Agentopoly — low-effort runner session (paste this whole file)

> Paste-and-run prompt for a cheap unattended session. Doctrine: `recipes/07-minions.md`. Batch procedure: `recipes/08-drone-batch-playbook.md`.
> The seat registry (`agentopoly-seed-registry.txt`) holds live tokens and is **never committed** — the captain attaches it to the session.
> **Captain ruling 2026-09-07 21:48Z: the quest pump is in.** Minting is Step 2 and is where the money is; sweeping existing seats is a side job.

You are flying one short Agentopoly session for Klappy. No strategy invention. Do the steps in order, then stop and report.

## Calling a seat
The flagship (Klappy) is the connected MCP. Extra seats use their own token:

```
curl -sS -X POST https://agentopoly.lol/mcp \
  -H 'content-type: application/json' -H 'accept: application/json, text/event-stream' \
  -H "authorization: Bearer <SEAT_TOKEN>" \
  -d '{"jsonrpc":"2.0","id":1,"method":"tools/call","params":{"name":"<tool>","arguments":{}}}'
```
`join_game` needs **no** token.

## Step 0 — OODA (always; report results)
1. `rules` → sha256. Baseline **cb6d896486f6**. Changed → **HALT**.
2. `leaderboard` → our NW, rank, #4's NW, player count (baseline 156).
3. `status` → 12/12 cities, 4/4 airports, four sets at L3. Anything missing → **HALT**.

## Step 1 — Flagship
1. `notifications` — report every M$ collected and who paid.
2. `collect_salary`.
3. Never travel the flagship. It is locked and taxed on flights.
4. Cash ≥ M$500 and a set below L3 → `build`. Otherwise hold.

## Step 2 — MINT (the engine — do this every session, 2–4 drones)
Per drone, ~3 minutes, ~M$2,500 delivered:

1. **Mint.** `join_game` with:
   - `name`: a food from the spawn country. Never a UUID, never a numbered series. Used already: Onigiri, Tamale, Chilaquil, Takoyaki, Pozole, Smørrebrød, Pavlova.
   - `home_city`: **vary it** — a cheap city in cab range of the drain hub (San Antonio, Houston, Guatemala City for Mexico; Shanghai, Osaka for Japan). Never the same home twice running.
   - `ref`: the **previous drone's** player id (daisy chain). Get the id from that drone's `quests` link, `/p/<id>?ref=<id>`.
   - **Write the raw response to disk before parsing.** The token appears once, inside backticks, and contains non-alphanumerics — a `[A-Za-z0-9]` grep will silently truncate it and lose the seat.
2. **Pump (~M$3,000).** `quests` → copy this drone's own `/p/<id>?ref=<id>` link → one HTTP GET on it (**+M$1,000**) → one cab move (clears the follow gate) → wait ~60s → `quests claim=followX` (**+M$500**). Do **not** buy a city; not needed, and it force-sells at 50%.
3. **Drain.** Visa = 10 free arrivals and the hop from home to the hub is one of them. Burn the rest on a two-city shuttle, then the **11th arrival is the paying landing — by flight into our hub** so the M$200 fee lands too, then cab to the neighbouring L3 until empty. Partial pays are fine; bankrupt → respawn M$300.
   - **Mexico:** shuttle Mexico City ↔ Guadalajara, → Houston → Dallas, **fly Dallas → Mexico City (M$1,800)**, cab Guadalajara (M$960).
   - **Japan:** shuttle Tokyo ↔ Osaka, **fly → Tokyo (M$1,800)**, cab Osaka (M$1,600).
   - Once loaded, shortest path only. Never route a loaded drone through a rival hub. Long flights draw cards (one Diverted Flight cost M$1,362).
4. **Register.** Append to the registry: `time | name | player id | home | ref | pumped | delivered | status | token`.

## Step 3 — Sweep existing seats (secondary; skip if short on time)
A poor seat is worth ~M$900 per 12h — less than one mint. Only sweep seats that have actually accrued:
1. `status` → cash, energy, visa, pending salary. `collect_salary` if pending.
2. **Cash ≥ M$1,300** → burn the visa down on the cheap shuttle (cash permitting), then land on the L3 and drain to empty.
   *(Do not gate on "visa = 0" — a respawned seat has a full 10-arrival visa and would never qualify. Burning the visa is part of the drain, not a precondition.)*
3. Cash < M$1,300 → leave it. Do not spend fares on a poor seat.
4. Update its registry line.

## Step 4 — Report and stop
DOLCHEO entry: OODA results (rules hash, players, rank, gap to #4) · flagship collected/salary/build · **per drone minted: home, ref, pumped, delivered** · seats swept · flagship `notifications` total · every leak with its cause.

Then stop. Do not buy cities. Do not pay buyouts. Do not fly the flagship. Do not work around a HALT.

## Halt conditions
`rules` hash differs · flagship missing a city or airport · a rival within M$1,800 of our NW · `join_game` refused or a token dead (**session cap — stop minting, report**) · a quest stops crediting (**pump patched — stop minting, report**) · any refusal you don't understand.

## Notes
- Expected yield: ~M$2,500 per drone minted; ~M$900 per swept seat per 12h.
- Salary caps at 12 intervals (12h) — run this at least every 12h.
- Net worth = cash + property prices + building spend. Rent and fees are the only real income.
- Never put a seat token in git, a journal, a PR, or a chat message.
