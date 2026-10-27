#!/usr/bin/env bash

echo "=== Edit Specific Lines ==="

cat > users.txt << EOF
Aryan
Piyush
Rahul
Amit
EOF

echo "Original:"
cat users.txt

echo
echo "Changing line 2..."

sed '2s/Piyush/Rohit/' users.txt

rm users.txt
