#!/usr/bin/env bash

echo "=== In-place File Editing ==="

cat > config.txt << EOF
ENV=dev
DEBUG=true
EOF

echo "Before:"
cat config.txt

sed -i 's/dev/prod/' config.txt
sed -i 's/true/false/' config.txt

echo
echo "After:"
cat config.txt

rm config.txt
