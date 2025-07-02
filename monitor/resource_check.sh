#!/bin/bash

LOG="/tmp/resource_usage.log"
THRESHOLD=80
TIME=$(date '+%Y-%m-%d %H:%M:%S')

USAGE=$(df / | awk 'END {print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "$TIME - Disk usage high: $USAGE%" >> $LOG
else
    echo "$TIME - Disk usage OK: $USAGE%" >> $LOG
fi
