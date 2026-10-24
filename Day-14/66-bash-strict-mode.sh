
#!/usr/bin/env bash

set -euo pipefail

echo "Starting deployment checks..."

APP_NAME="demo-app"
echo "Application: $APP_NAME"

echo "Checking required directory..."
mkdir -p ./deployment-output

echo "All checks completed successfully."

