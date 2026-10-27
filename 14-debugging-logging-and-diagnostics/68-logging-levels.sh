
#!/usr/bin/env bash

set -euo pipefail

LOG_FILE="./application.log"

log() {
    local level="$1"
    shift
    local timestamp
    timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    printf '[%s] [%s] %s\n' "$timestamp" "$level" "$*" | tee -a "$LOG_FILE"
}

log INFO "Application startup initiated"
log WARN "Configuration file not found; using defaults"
log INFO "Checking application dependencies"

if command -v bash >/dev/null 2>&1; then
    log INFO "Bash is available"
else
    log ERROR "Bash is unavailable"
    exit 1
fi

log INFO "Application checks completed"

