#!/usr/bin/env bash

echo "=== Print Matching Lines ==="

cat > server.log << EOF
INFO Login Success
ERROR Database Failed
INFO File Uploaded
ERROR Connection Timeout
EOF

echo "Only ERROR lines:"
sed -n '/ERROR/p' server.log

rm server.log
