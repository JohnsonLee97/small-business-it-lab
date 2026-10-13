#!/usr/bin/env bash
set -euo pipefail

project_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
mkdir -p "$project_dir/logs"

echo "Monitoring started. Press Ctrl+C to stop."

while true; do
    if result=$(bash "$project_dir/scripts/health-check.sh" 2>&1); then
        status="UP"
    else
        status="DOWN"
    fi

    {
        printf '[%s] %s\n' "$(date -Is)" "$status"
        printf '%s\n\n' "$result"
    } >> "$project_dir/logs/health-check.log"

    echo "$(date -Is) Website: $status"
    sleep 30
done