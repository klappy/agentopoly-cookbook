# Drain routes and visa arithmetic

Visa = 10 free arrivals. Count every arrival, including the first hop from home. Arrival #11 is the paying landing — make it a **flight into our own hub** so the M$200 airport fee lands too — then cab to the neighbouring L3 until empty.

## Mexico corridor (home: San Antonio · Houston · Guatemala City · Guadalajara · Mexico City)
1. Home → Mexico City (if home ≠ hub) — arrival 1
2. Mexico City ↔ Guadalajara shuttle (M$28 each) until 2 visas remain
3. Mexico City → Houston (cab M$58) — visa 1 left
4. Houston → Dallas (cab M$24) — visa 0
5. **Dallas → Mexico City (flight M$55) — pays M$1,600 + M$200**
6. Mexico City → Guadalajara (cab M$28) — pays up to M$960 / partial
Fares ≈ M$300 + ~M$100 expected card cost.

## Japan corridor (home: Shanghai · Osaka · Tokyo)
1. Home → Tokyo — arrival 1
2. Tokyo ↔ Osaka shuttle (M$26 each) until 2 visas remain
3. Tokyo → Seoul (flight M$51, LVJ's — visa covers it) — visa 1 left
4. Seoul → Hong Kong (flight ~M$70, LVJ's — visa covers it) — visa 0
5. **Hong Kong → Tokyo (flight ~M$69) — pays M$1,600 + M$200**
6. Tokyo → Osaka (cab M$26) — pays up to M$1,600 / partial
Both Seoul and Hong Kong are rival tiles: they are only safe **while the visa is live**. If the count is off by one, step 4 pays LVJ M$224. Count.

## Canada (cab only)
Fly into **Montreal is not a hub**; Toronto's airport is flujo's. Cab in from Buffalo/Detroit-class tiles. Toronto/Montreal M$960, Vancouver M$640. Lower yield than MX/JP by air — use only for variety.

## Card tax (real receipts)
- Diverted Flight can teleport a loaded drone onto another engine's L3 (Chilaquil → Santiago, M$985 to EA). Stays in the fleet, off-plan.
- Currency Crash −10%. Pickpocket −M$100. Homesick → home (an arrival; if home is a flagship tile, that's a free tithe).
- Rule: once loaded, shortest path only. Prefer cabs; flights draw the expensive diversions.

## Receipts (2026-09-07)
| Drone | Home | Route | Delivered |
|---|---|---|---|
| Seed 1 | Mexico City | MX | M$2,330 (one Diverted) |
| Seed 3 | Mexico City | MX | M$2,558 |
| Onigiri | Tokyo | JP | M$2,727 |
| Tamale | Mexico City | MX | M$2,664 |
| Chilaquil | San Antonio | MX | M$1,128 (Diverted + Crash + Pickpocket) |
| Takoyaki | Shanghai | JP | M$2,362 (M$224 leaked, off-by-one) |
| Pozole | Guatemala City | MX | M$2,560 |
Mean ≈ M$2,300 per drone, ~3 minutes each.

## Script receipts (2026-09-07 22:0xZ, `scripts/drone.sh`)
| Drone | Home | Delivered | Note |
|---|---|---|---|
| Enchilada | Houston | M$0 | script bug: drain aborted, token not yet logged → M$2,967 stranded. Fixed: token logged at mint. |
| Carnitas | Guadalajara | M$2,584 | M$24 leaked to Adi at Dallas (off-hub shuttle end). Fixed: pre-hops adapt to visa count. |
