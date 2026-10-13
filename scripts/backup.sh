#!/bin/bash

BACKUP_DIR="/var/backups/syt-project"
PROJECT_DIR="$HOME/syt-smart-plant/docker"
DATE=$(date +"%Y%m%d_%H%M%S")

mkdir -p "$BACKUP_DIR"

echo "=== Starte Backup: $DATE ==="


tar -czf "$BACKUP_DIR/backup_$DATE.tar.gz" -C "$PROJECT_DIR" .

find "$BACKUP_DIR" -type f -name "backup_*.tar.gz" -mtime +7 -delete

echo "Backup erfolgreich gespeichert unter: $BACKUP_DIR/backup_$DATE.tar.gz"
