#!/usr/bin/env bash

set -euo pipefail

OUTPUT_FILE="./command-output.log"
ERROR_FILE="./command-errors.log"

exec 3> "$OUTPUT_FILE"
exec 4> "$ERROR_FILE"

printf 'Starting system checks\n' >&3
printf 'Checking Bash availability\n' >&3

if command -v bash >/dev/null 2>&1; then
    printf 'Bash is available\n' >&3
else
    printf 'Bash is unavailable\n' >&4
    exec 3>&-
    exec 4>&-
    exit 1
fi

printf 'System checks completed\n' >&3

exec 3>&-
exec 4>&-

printf 'Check completed. Results saved to log files.\n'
