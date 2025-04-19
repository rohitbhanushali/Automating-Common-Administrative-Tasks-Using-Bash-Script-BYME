#!/bin/bash
# Script to monitor disk usage and send alerts

THRESHOLD=80
EMAIL="admin@example.com"

echo "Checking disk usage..."
df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read output; do
  USAGE=$(echo $output | awk '{ print $1 }' | sed 's/%//g')
  PARTITION=$(echo $output | awk '{ print $2 }')
  if [ $USAGE -ge $THRESHOLD ]; then
    echo "Disk usage on $PARTITION has reached $USAGE%." | mail -s "Disk Usage Alert" $EMAIL
  fi
done
echo "Disk usage check completed."