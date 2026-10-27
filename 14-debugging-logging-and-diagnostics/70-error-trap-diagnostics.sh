
#!/usr/bin/env bash

set -Eeuo pipefail

trap 'handle_error "$?" "$LINENO" "$BASH_COMMAND"' ERR

handle_error() {
    local exit_code="$1"
    local line_number="$2"
    local failed_command="$3"

    printf '[ERROR] Exit code: %s\n' "$exit_code" >&2
    printf '[ERROR] Line: %s\n' "$line_number" >&2
    printf '[ERROR] Command: %s\n' "$failed_command" >&2
}

echo "Starting system check..."

CONFIG_FILE="./app-config.conf"

echo "Reading configuration..."

cat "$CONFIG_FILE"

echo "System check completed."

