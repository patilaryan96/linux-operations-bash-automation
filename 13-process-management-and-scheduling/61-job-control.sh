#!/usr/bin/env bash

echo "Starting long-running background task..."
sleep 10 &
BG_PID=$!

echo "Background process launched with PID: $BG_PID"
echo "Active jobs in current shell session:"
jobs -l

echo "Waiting for process $BG_PID to finish..."
wait $BG_PID
echo "Background task complete!"
