#!/usr/bin/env bash

# 1. Create temporary sample CSV file
cat << 'EOF' > sales.csv
Item,Qty,Price
Laptop,2,45000
Mouse,5,600
Keyboard,3,1200
EOF

# 2. AWK script demonstrating built-in variables
awk -F',' '
NR > 1 {
    # $0       = Entire unparsed line
    # NF       = Number of Fields (total columns in current line)
    # NR       = Number of Records (current line number)
    # FILENAME = Name of the file being processed
    
    print "Line " NR " (" FILENAME "): Column count = " NF
    print "Full Line content: " $0
    print "Last Column value ($NF): " $NF
    print "---------------------------------"
}
' sales.csv

# 3. Cleanup
rm sales.csv
