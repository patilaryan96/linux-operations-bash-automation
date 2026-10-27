#!/usr/bin/env bash

echo "=== Basic sed ==="

cat > names.txt <<EOF
Aryan
Piyush
Rahul
Amit
Neha
EOF

echo
echo "Original file:"
cat names.txt

echo
echo "Replace Rahul with Rohan:"
sed 's/Rahul/Rohan/' names.txt

echo
echo "First three lines:"
sed -n '1,3p' names.txt

rm names.txt
