#!/bin/bash
# resume.sh TOKEN CORRIDOR(MX|JP) - finish draining a paused drone (energy ran out mid-route). Safe to re-run; stops when empty or out of energy.
set -u; T="$1"; COR="$2"; D="$(cd "$(dirname "$0")" && pwd)"; AP="$D/ap.sh"
if [ "$COR" = "MX" ]; then HUB="Mexico City"; LAST=Guadalajara; else HUB="Tokyo"; LAST=Osaka; fi
S=$("$AP" "$T" status); echo "$S" | head -3
E=$(echo "$S" | grep -o 'energy [0-9]*' | grep -o '[0-9]*' | head -1); C=$(echo "$S" | grep -o 'M\$[0-9,]* cash' | tr -dc 0-9)
[ "${E:-0}" -lt 1 ] && { echo "no energy yet - retry after the time shown above"; exit 3; }
[ "${C:-0}" -lt 60 ] && { echo "already empty"; exit 0; }
if ! echo "$S" | grep -m1 '📍' | grep -q "$HUB"; then "$AP" "$T" travel "{\"to\":\"$HUB\"}" | grep -E "Paid|drew|ERROR|Arrived"; fi
S=$("$AP" "$T" status); E=$(echo "$S" | grep -o 'energy [0-9]*' | grep -o '[0-9]*' | head -1); C=$(echo "$S" | grep -o 'M\$[0-9,]* cash' | tr -dc 0-9)
[ "${E:-0}" -ge 1 ] && [ "${C:-0}" -ge 60 ] && "$AP" "$T" travel "{\"to\":\"$LAST\"}" | grep -E "Paid|drew|ERROR|Arrived"
"$AP" "$T" status | head -1
