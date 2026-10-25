#!/usr/bin/env bash

set -euo pipefail

declare -A services=(
    [nginx]=80
    [ssh]=22
    [https]=443
)

printf '%-12s %s\n' "SERVICE" "PORT"
printf '%-12s %s\n' "-------" "----"

for service in "${!services[@]}"; do
    printf '%-12s %s\n' "$service" "${services[$service]}"
done

printf '\nHTTPS port: %s\n' "${services[https]}"
printf 'Total services: %s\n' "${#services[@]}"
