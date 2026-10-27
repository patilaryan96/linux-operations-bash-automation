#!/usr/bin/env bash

# 1. Create a 3-line sample CSV file
cat << 'EOF' > sales.csv
Item,Qty,Price
Laptop,2,45000
Mouse,5,600
Keyboard,3,1200
EOF

# 2. AWK using simple BEGIN and END
awk -F',' '
BEGIN {
    print "--- START OF REPORT ---"
}

NR > 1 {
    print "Processing item: " $1
}

END {
    print "--- END OF REPORT ---"
}
' sales.csv

# 3. Cleanup
rm sales.csv
