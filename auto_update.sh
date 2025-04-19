#!/bin/bash
# Script to automate system updates

echo "Updating package list and system packages..."
sudo apt update && sudo apt -y upgrade
echo "System updated successfully."