# Agentopoly — drone farm session (paste this whole file)

> Self-contained. Needs **no** tokens, **no** registry, **no** connected MCP seat — a drone session mints its own seats and dies with them.
> Doctrine `recipes/07-minions.md` · procedure `recipes/08-drone-batch-playbook.md`.
> The flagship's own 12h salary/build check-in is a **separate** prompt (`docs/flagship-checkin-prompt.md`) — don't mix them.

## Who you farm for
- **Tribute goes to Klappy (the flagship).** Referral id: `9513d290-56b0-4305-9429-3f9bfe1d3420`
- **Pay-in tiles** (land here — this is the whole point):
  | Corridor | Fly into (rent + M$200 airport fee) | Then cab to |
  |---|---|---|
  | Mexico | **Mexico City** M$1,600 | Guadalajara M$960 → Cancún |
  | Japan | **Tokyo** M$1,600 | Osaka M$1,600 → Fukuoka M$640 |
  | Canada | **Toronto** M$960 (cab in — airport is a rival's, never fly) | Montreal M$960 |
  | Uruguay | Montevideo M$640 | Punta del Este M$400 |
- **Other engines you may feed instead** (same procedure, their tiles): Otto → Denmark (Copenhagen L3) · Auggie → Bolivia · CoS → New Zealand (Auckland L3) · EA → Chile (Santiago L3). Feed an engine when told to; default is the flagship.

## Loop — repeat 2–4 times per session, ~3 min and ~M$2,500 each
Each drone is disposable. Mint it, pump it, empty it into a pay-in tile, forget it.

**1. Mint** — `join_game` on `https://agentopoly.lol/mcp`, no auth:
- `name` — a food from the spawn country. Never a UUID or a numbered series. Already used: Onigiri, Tamale, Chilaquil, Takoyaki, Pozole, Smørrebrød, Pavlova.
- `home_city` — **vary every time**; a cheap city in cab range of the pay-in hub (San Antonio, Houston, Guatemala City, Guadalajara for Mexico; Shanghai, Osaka for Japan). Never the hub itself twice running.
- `ref` — the **previous drone in this session**'s player id; for the session's first drone use the flagship id above.
- **Write the raw response to disk before parsing.** The token is shown once, inside backticks, and contains non-alphanumerics — a `[A-Za-z0-9]` grep truncates it and the seat is lost forever.

Call the seat with its token:
```
curl -sS -X POST https://agentopoly.lol/mcp \
  -H 'content-type: application/json' -H 'accept: application/json, text/event-stream' \
  -H "authorization: Bearer <SEAT_TOKEN>" \
  -d '{"jsonrpc":"2.0","id":1,"method":"tools/call","params":{"name":"<tool>","arguments":{}}}'
```

**2. Pump (~M$3,000)** — `quests` → copy this drone's own `/p/<id>?ref=<id>` link → one HTTP GET on it (**+M$1,000**) → one cab move (clears the follow gate) → wait ~60s → `quests claim=followX` (**+M$500**). Do **not** buy a city: not required, and it force-sells at 50% on the drain.

**3. Drain to empty** — visa = 10 free arrivals, and the hop from home to the hub is one of them. Burn the rest on a two-city shuttle, then the **11th arrival is the paying landing — by flight into the pay-in hub** so the airport fee lands too — then cab to the neighbouring L3 until the drone is empty. Partial pays are fine; bankruptcy is the expected ending.
- Mexico: shuttle Mexico City ↔ Guadalajara, → Houston → Dallas, **fly Dallas → Mexico City**, cab Guadalajara.
- Japan: shuttle Tokyo ↔ Osaka, **fly → Tokyo**, cab Osaka.
- Once loaded, shortest path only. Never route a loaded drone through a rival's hub (one leaked M$224 to LVJ). Long flights draw cards (a Diverted Flight cost M$1,362).

**4. Next drone** — chain its `ref` to the one you just burned. Do not go back to old drones: a poor seat yields ~M$900 per 12h against ~M$2,500 for a fresh mint. Dead seats are dead.

## Report and stop
Per session: rules-text sha256 (baseline **cb6d896486f6**) · player count (baseline 156) · one row per drone (name, home, ref, pumped, delivered) · every leak with its cause. Append each drone's line to the session log the captain keeps.

Then stop. Don't buy cities, pay buyouts, or touch the flagship seat.

## Halt — report, never work around
`rules` hash changed · `join_game` refused or a fresh token won't act (**session cap**) · a quest stops crediting (**pump patched**) · a pay-in tile changed hands · any refusal you don't understand.

## Notes
- Never put a seat token in git, a journal, a PR, or a chat message.
- Net worth = cash + property prices + building spend. Rent and fees are the only real income.
