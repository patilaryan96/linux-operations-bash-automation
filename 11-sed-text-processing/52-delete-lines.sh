#!/usr/bin/env bash

echo "=== Delete Lines Using sed ==="

cat > logs.txt << EOF
INFO Server Started
DEBUG Cache Loaded
ERROR Database Failed
DEBUG Memory Check
INFO User Login
EOF

echo "Original:"
cat logs.txt

echo
echo "Removing DEBUG lines..."

sed '/DEBUG/d' logs.txt

rm logs.txt
