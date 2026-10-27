#!/usr/bin/env bash

LOG_FILE="process_runner.log"

echo "Executing background worker detached from terminal..."
nohup bash -c '
    for i in {1..5}; do
        echo "$(date): Logging background task step $i"
        sleep 2
    done
' > "$LOG_FILE" 2>&1 &

echo "Detached job running in background. Logs written to: $LOG_FILE"
echo "Tail log output with: tail -f $LOG_FILE"
