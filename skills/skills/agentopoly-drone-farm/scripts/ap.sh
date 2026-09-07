#!/bin/bash
# ap.sh TOKEN TOOL ['{"json":"args"}'] - call one Agentopoly MCP tool as a seat and print its text
curl -sS -X POST https://agentopoly.lol/mcp -H 'content-type: application/json' -H 'accept: application/json, text/event-stream' -H "authorization: Bearer $1" \
 -d "{\"jsonrpc\":\"2.0\",\"id\":1,\"method\":\"tools/call\",\"params\":{\"name\":\"$2\",\"arguments\":${3:-{\}}}}" \
 | grep '^data:' | python3 -c "
import sys,json
for l in sys.stdin:
    d=json.loads(l[5:])
    if 'error' in d: print('ERROR',d['error'])
    else:
        for c in d['result'].get('content',[]):
            if c.get('type')=='text': print(c['text'])
" 2>/dev/null
