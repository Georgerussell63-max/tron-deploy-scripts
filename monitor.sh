#!/bin/bash
while true; do
    echo "$(date) Checking balance..."
    curl -s "https://api.trongrid.io/v1/accounts/$ADDRESS" | python3 -c "import sys,json; d=json.load(sys.stdin); print(f'TRX: {d[\"data\"][0].get(\"balance\",0)/1e6}')"
    sleep 60
done