#!/bin/bash
# Script to back up important directories

SOURCE_DIRS="/etc /home /var/www"
BACKUP_DIR="/backups"
DATE=$(date +%Y-%m-%d)
BACKUP_FILE="$BACKUP_DIR/backup-$DATE.tar.gz"

echo "Creating backup of $SOURCE_DIRS..."
mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_FILE" $SOURCE_DIRS
echo "Backup completed: $BACKUP_FILE"