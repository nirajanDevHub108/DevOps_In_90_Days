#!/opt/homebrew/bin/bash

URL="http://localhost:5001/health"
RETRIES=5
COUNT=0

while [ $COUNT -lt $RETRIES ]; do
    STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" $URL)

    if [ "$STATUS_CODE" -eq 200 ]; then
        echo "✅ API is healthy"
        exit 0
    fi
    echo "⚠️ API not ready. Retrying..."
    sleep 2
    COUNT=$((COUNT+1))
done
echo "❌ API failed after $RETRIES attempts"
exit 1