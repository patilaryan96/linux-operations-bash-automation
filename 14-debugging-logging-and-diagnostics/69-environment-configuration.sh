
#!/usr/bin/env bash

set -euo pipefail

APP_NAME="${APP_NAME:-demo-app}"
ENVIRONMENT="${ENVIRONMENT:-development}"
PORT="${PORT:-8080}"

log_config() {
    printf 'Application: %s\n' "$APP_NAME"
    printf 'Environment: %s\n' "$ENVIRONMENT"
    printf 'Port: %s\n' "$PORT"
}

case "$ENVIRONMENT" in
    development|testing|production)
        log_config
        ;;
    *)
        printf 'Error: Invalid environment: %s\n' "$ENVIRONMENT" >&2
        exit 1
        ;;
esac

