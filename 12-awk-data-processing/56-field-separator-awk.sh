#!/usr/bin/env bash

# 1. Create temporary sample CSV file
cat << 'EOF' > sales.csv
Item,Qty,Price
Laptop,2,45000
Mouse,5,600
Keyboard,3,1200
EOF

echo "=== Original File Content ==="
cat sales.csv

echo ""
echo "=== Step 1: Extract Columns (Item & Price) ==="
# -F',' sets comma separator
# NR > 1 skips the header line
awk -F',' 'NR > 1 { print $1 " costs ₹" $3 }' sales.csv

echo ""
echo "=== Step 2: Perform Calculation ($2 * $3) ==="
# Multiply Qty ($2) by Price ($3)
awk -F',' 'NR > 1 { print $1 " Total: ₹" $2 * $3 }' sales.csv

# Cleanup temporary file
rm sales.csv
