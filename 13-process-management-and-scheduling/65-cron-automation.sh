#!/usr/bin/env bash

CRON_JOB="0 * * * * $(pwd)/64-system-monitor.sh >> $(pwd)/cron_monitor.log 2>&1"

echo "Checking existing user crontab entries:"
crontab -l 2>/dev/null || echo "No existing crontab found for user."

echo "Adding hourly system monitor cron job..."
(crontab -l 2>/dev/null; echo "$CRON_JOB") | crontab -

echo -e "\nUpdated Crontab:"
crontab -l
