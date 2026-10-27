#!/usr/bin/env bash

echo "=== Basic awk ==="

cat > employees.txt <<EOF
Aryan 50000
Piyush 45000
Rahul 40000
Amit 55000
Neha 48000
EOF

echo
echo "Complete file:"
awk '{print}' employees.txt

echo
echo "Employee names:"
awk '{print $1}' employees.txt

echo
echo "Employee salaries:"
awk '{print $2}' employees.txt

echo
echo "Name and salary:"
awk '{print $1, $2}' employees.txt

rm employees.txt
