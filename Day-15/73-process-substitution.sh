#!/usr/bin/env bash

set -euo pipefail

EXPECTED_SERVICES=$(printf '%s\n' nginx ssh docker)
RUNNING_SERVICES=$(printf '%s\n' nginx docker ssh)

printf 'Comparing expected and running services...\n'

if diff -u \
    <(printf '%s\n' "$EXPECTED_SERVICES" | sort) \
    <(printf '%s\n' "$RUNNING_SERVICES" | sort); then
    printf 'Service lists match.\n'
else
    printf 'Service lists differ.\n'
fi
