#!/usr/bin/env bash

# 1. Create temporary sample CSV file
cat << 'EOF' > sales.csv
Item,Qty,Price
Laptop,2,45000
Mouse,5,600
Keyboard,3,1200
EOF

# 2. AWK script using counter and total variables
awk -F',' '
BEGIN {
    count = 0
    total = 0
}

# Run for data lines only (skipping header)
NR > 1 {
    count++                   # Increment row count
    total = total + ($2 * $3)  # Add (Qty * Price) to running total
}

END {
    print "Total Items Processed: " count
    print "Grand Total Cost: ₹" total
}
' sales.csv

# 3. Cleanup
rm sales.csv
