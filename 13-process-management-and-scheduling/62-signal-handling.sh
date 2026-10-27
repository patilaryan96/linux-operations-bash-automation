#!/usr/bin/env bash

# Define cleanup function on script interruption/exit
cleanup() {
    echo -e "\n[!] Signal caught or script exiting. Cleaning up temporary files..."
    rm -f /tmp/temp_job_$$.txt
    echo "Cleanup complete. Exiting safely."
    exit 0
}

trap cleanup SIGINT SIGTERM EXIT

# Create a temporary file associated with process ID ($$)
touch /tmp/temp_job_$$.txt
echo "Working... Press Ctrl+C to test signal trapping."

for i in {1..10}; do
    echo "Processing step $i/10..."
    sleep 2
done
