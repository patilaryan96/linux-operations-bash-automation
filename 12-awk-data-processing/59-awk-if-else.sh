#!/usr/bin/env bash

# 1. Create temporary sample CSV file
cat << 'EOF' > sales.csv
Item,Qty,Price
Laptop,2,45000
Mouse,5,600
Keyboard,3,1200
EOF

# 2. AWK script with if-else filtering
awk -F',' '
NR > 1 {
    item_total = $2 * $3

    # Check if total expense for the item is high or low
    if (item_total > 5000) {
        print "[HIGH EXPENSE] " $1 " costs ₹" item_total
    } else {
        print "[LOW EXPENSE]  " $1 " costs ₹" item_total
    }
}
' sales.csv

# 3. Cleanup
rm sales.csv
