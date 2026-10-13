#!/usr/bin/env bash
set -euo pipefail

project_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
backup_dir="$project_dir/backups"

mkdir -p "$backup_dir"
archive="$(mktemp "$backup_dir/website-$(date +%Y%m%d-%H%M%S)-XXXXXX.tar.gz")"

tar -czf "$archive" -C /var/www/html .
tar -tzf "$archive" > /dev/null

echo "Backup created: $archive"