#!/bin/bash

SERVICE_NAME="nginx"
URL="http://localhost"
LOG_FILE="/tmp/health_check.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL)

if [ "$STATUS" -ne 200 ]; then
    echo "$TIMESTAMP - $SERVICE_NAME is DOWN (HTTP $STATUS)" >> $LOG_FILE
    sudo systemctl restart $SERVICE_NAME
    echo "$TIMESTAMP - Restarted $SERVICE_NAME" >> $LOG_FILE
else
    echo "$TIMESTAMP - $SERVICE_NAME is UP (HTTP $STATUS)" >> $LOG_FILE
fi
