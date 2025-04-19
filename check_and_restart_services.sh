#!/bin/bash
# Script to check and restart critical services

SERVICES=("nginx" "mysql")

for SERVICE in "${SERVICES[@]}"; do
  echo "Checking status of $SERVICE..."
  if ! systemctl is-active --quiet $SERVICE; then
    echo "$SERVICE is not running. Restarting..."
    sudo systemctl restart $SERVICE
    echo "$SERVICE restarted successfully."
  else
    echo "$SERVICE is running."
  fi
done