#!/usr/bin/env bash

echo "=== grep Filtering ==="

cat > server.log <<EOF
INFO Server started
ERROR Database connection failed
INFO User login successful
WARNING Disk space is low
ERROR Authentication failed
INFO Backup completed
EOF

echo "All ERROR messages:"
grep "ERROR" server.log

echo
echo "Case-insensitive search for warning:"
grep -i "warning" server.log

echo
echo "ERROR messages with line numbers:"
grep -n "ERROR" server.log

rm server.log
