# ⏰ Recipe 01 — Check-in (every ≤12h)

**Why:** salary (M$100/h) caps at 12 banked hours. Any action collects it. Missing the cap is the only way to lose it.

1. `status` → note cash, rank, energy, visa, slots, pending salary.
2. `collect_salary` if pending.
3. `activity` limit 50 → scan for:
   - 💥 bankruptcies on our tiles (P1 open question: do L3 rents choke traffic?)
   - 🏚️ forced sales / sell-backs putting built cities on the market
   - 🛫 new flight corridors, unowned hubs, new spawn regions
4. `notifications` → rent/fee report since last check.
5. Report to captain in ≤6 lines: cash · Δ since last · rank · anything from step 3.
6. Append one `[O]` line to today's journal file if anything new was observed.
