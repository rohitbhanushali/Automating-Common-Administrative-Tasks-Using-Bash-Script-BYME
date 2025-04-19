#!/bin/bash
# Script to delete outdated log files

LOG_DIR="/var/log"
DAYS_TO_KEEP=30

echo "Deleting log files older than $DAYS_TO_KEEP days from $LOG_DIR..."
find "$LOG_DIR" -name "*.log" -type f -mtime +$DAYS_TO_KEEP -exec rm -f {} \;
echo "Old log files deleted successfully."