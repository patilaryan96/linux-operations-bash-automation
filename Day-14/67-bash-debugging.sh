
#!/usr/bin/env bash

set -euo pipefail

APP_NAME="nginx"
SERVICE_STATUS="running"

set -x

echo "Checking application: $APP_NAME"
echo "Service status: $SERVICE_STATUS"

if [[ "$SERVICE_STATUS" == "running" ]]; then
    echo "$APP_NAME is running successfully."
else
    echo "$APP_NAME is not running."
fi

set +x

echo "Debugging completed."

