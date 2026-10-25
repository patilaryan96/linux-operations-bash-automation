#!/usr/bin/env bash

set -euo pipefail

APP_NAME="demo-app"
APP_PORT=8080
APP_ENV="development"
OUTPUT_FILE="./app-template.conf"

cat > "$OUTPUT_FILE" <<EOT
application=$APP_NAME
port=$APP_PORT
environment=$APP_ENV
started_at=$(date '+%Y-%m-%d %H:%M:%S')
EOT

printf 'Configuration template created: %s\n' "$OUTPUT_FILE"
cat "$OUTPUT_FILE"
