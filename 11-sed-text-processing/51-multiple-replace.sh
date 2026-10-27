#!/usr/bin/env bash

echo "=== Multiple Text Replacement ==="

cat > app.conf << EOF
server=localhost
port=8080
mode=dev
EOF

echo "Original File:"
cat app.conf

echo
echo "Replacing values..."

sed -e 's/localhost/192.168.1.10/' \
    -e 's/8080/80/' \
    -e 's/dev/production/' \
    app.conf

rm app.conf
