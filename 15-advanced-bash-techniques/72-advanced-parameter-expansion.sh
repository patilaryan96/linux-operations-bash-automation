#!/usr/bin/env bash

set -euo pipefail

IMAGE="nginx:1.27.3"
LOG_FILE="/var/log/nginx/access.log"
URL="https://example.com/api/health"

printf 'Original image: %s\n' "$IMAGE"
printf 'Image name: %s\n' "${IMAGE%%:*}"
printf 'Image tag: %s\n' "${IMAGE##*:}"

printf '\nOriginal path: %s\n' "$LOG_FILE"
printf 'Filename: %s\n' "${LOG_FILE##*/}"
printf 'Directory: %s\n' "${LOG_FILE%/*}"

printf '\nOriginal URL: %s\n' "$URL"
printf 'Protocol: %s\n' "${URL%%://*}"
printf 'Remaining path: %s\n' "${URL#*://}"
