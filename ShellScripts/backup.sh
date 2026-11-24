#!/usr/bin/env bash
set -e
source_dir="${1:-.}"
destination="${2:-./backups}"
if [ ! -d "$source_dir" ]; then echo 'Source directory not found'; exit 1; fi
mkdir -p "$destination"
archive="$destination/backup_$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czf "$archive" -C "$source_dir" --exclude='./backups' .
echo "Backup created: $archive"
