#!/bin/bash
# drone.sh NAME HOME_CITY REF_ID CORRIDOR(MX|JP) [LOGFILE]
# Mint -> pump -> drain one disposable drone into the flagship's pay-in tiles.
# Prints receipts; appends one registry line to LOGFILE. Needs curl, python3, bc. No token in; token never printed.
set -u
NAME="$1"; HOME="$2"; REF="$3"; COR="$4"; LOG="${5:-./drone-log.txt}"
D="$(cd "$(dirname "$0")" && pwd)"; AP="$D/ap.sh"

# 1. Mint - raw response to disk BEFORE parsing (token shown once, contains non-alphanumerics)
RAWF="$(mktemp)"
curl -sS -X POST https://agentopoly.lol/mcp -H 'content-type: application/json' -H 'accept: application/json, text/event-stream' \
  -d "{\"jsonrpc\":\"2.0\",\"id\":3,\"method\":\"tools/call\",\"params\":{\"name\":\"join_game\",\"arguments\":{\"name\":\"$NAME\",\"home_city\":\"$HOME\",\"ref\":\"$REF\"}}}" > "$RAWF"
T=$(python3 - "$RAWF" <<'PY'
import sys,json,re
for l in open(sys.argv[1]):
    if l.startswith('data:'):
        d=json.loads(l[5:])
        if 'error' in d: print('FAIL:'+json.dumps(d['error'])); break
        t=d['result']['content'][0]['text']; m=re.search(r'`(ap_[^`]+)`',t)
        print(m.group(1) if m else 'FAIL:'+t[:160].replace('\n',' '))
PY
)
rm -f "$RAWF"
case "$T" in FAIL:*|"") echo "HALT - join_game refused for $NAME: $T"; exit 2;; esac
echo "minted $NAME (home $HOME, ref $REF)"
touch "$LOG"; chmod 600 "$LOG"
echo "$(date -u +%FT%TZ) | $NAME | pending-id | home=$HOME | ref=$REF | status=minted | token=$T" >> "$LOG"

# 2. Pump - self-link GET (+1000), one move (unlocks follow), claim follow (+500)
L=$("$AP" "$T" quests | grep -o 'https://agentopoly.lol/p/[0-9a-f-]*?ref=[0-9a-f-]*' | head -1)
ID=$(echo "$L" | sed 's/.*\/p\///;s/?.*//')
curl -sS -o /dev/null -A "Mozilla/5.0" "$L"
if [ "$COR" = "MX" ]; then HUB="Mexico City"; SHUT=Guadalajara; PRE=(Houston Dallas); LAST=Guadalajara
else HUB="Tokyo"; SHUT=Osaka; PRE=(Seoul "Hong Kong"); LAST=Osaka; fi
"$AP" "$T" travel "{\"to\":\"$HUB\"}" | grep -E "Arrived|drew" | head -2; true
sleep 62
if "$AP" "$T" quests '{"claim":"followX"}' | grep -q "Follow Agentopoly on X\*\* .*claimed"; then echo "pumped: share + follow credited"; else echo "WARNING - follow did not credit; pump may be patched"; fi
CASHTXT=$("$AP" "$T" status | grep -o 'M\$[0-9,]* cash' | head -1); echo "cash after pump: $CASHTXT"
if [ "$(echo "$CASHTXT" | tr -dc 0-9)" -lt 2000 ]; then echo "HALT - pump yielded < M\$2,000; share credit may be patched"; fi

# 3. Drain - shuttle until exactly 2 visas remain, two pre-hops, paying FLIGHT into hub, cab to neighbour
PAID=0
visa() { local v; v=$("$AP" "$T" status | grep -o '[0-9]* rent-free' | grep -o '[0-9]*' | head -1); echo "${v:-0}"; }
pause() { python3 - "$LOG" "$NAME" "$ID" "$COR" "$PAID" "$T" <<'PY'
import sys
log,name,pid,cor,paid,tok=sys.argv[1:]
lines=open(log).read().splitlines()
out=[(l.replace("status=minted",f"status=PAUSED-energy corridor={cor} delivered-so-far=M${paid}")) if (f"| {name} |" in l and "status=minted" in l) else l for l in lines]
open(log,'w').write("\n".join(out)+"\n")
PY
echo "PAUSED $NAME: out of energy with cash still aboard - run scripts/resume.sh <token> $COR in ~6 min"; echo "NEXT_REF=$ID"; exit 3; }
hop() { R=$("$AP" "$T" travel "{\"to\":\"$1\"}"); echo "$R" | grep -E "Paid|drew|ERROR" | head -3
        echo "$R" | grep -qiE "energy|wait" && ! echo "$R" | grep -q "Arrived" && pause
        P=$(echo "$R" | grep -oE 'Paid M\$[0-9,]+ (rent|airport fee) to \*\*Klappy' | grep -oE 'M\$[0-9,]+' | tr -dc '0-9\n' | paste -sd+ | bc 2>/dev/null); PAID=$((PAID+${P:-0}))
        echo "$R" | grep -q ERROR && return 1; sleep 1; return 0; }
next=$SHUT
while [ "$(visa)" -gt 2 ]; do hop "$next" || break; if [ "$next" = "$SHUT" ]; then next="$HUB"; else next="$SHUT"; fi; done
"$AP" "$T" status | grep -m1 '📍' | grep -q "$HUB" || hop "$HUB"
# visa is now 1 or 2: with 2 take both pre-hops, with 1 take only the last so arrival #11 is the paying flight
if [ "$(visa)" -ge 2 ]; then for c in "${PRE[@]}"; do hop "$c" || break; done; else hop "${PRE[-1]}"; fi
hop "$HUB"
hop "$LAST"
echo "$NAME delivered to Klappy: M\$$PAID"
python3 - "$LOG" "$NAME" "$ID" "$HOME" "$REF" "$CASHTXT" "$PAID" "$T" <<'PY'
import sys,datetime
log,name,pid,home,ref,cash,paid,tok=sys.argv[1:]
lines=open(log).read().splitlines()
new=f"{datetime.datetime.now(datetime.timezone.utc).strftime('%Y-%m-%dT%H:%M:%SZ')} | {name} | {pid} | home={home} | ref={ref} | pumped={cash} | delivered=M${paid} | status=spent | token={tok}"
out=[new if (f"| {name} |" in l and "status=minted" in l) else l for l in lines]
open(log,'w').write("\n".join(out)+"\n")
PY
echo "NEXT_REF=$ID"
