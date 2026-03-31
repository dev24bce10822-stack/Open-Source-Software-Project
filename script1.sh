#!/bin/bash

# ==========================================================
# Script 1: System Identity Report
# Author: Dev Wandalkar
# Course: Open Source Software
# Description: Displays important system information
# ==========================================================

# ----------- User-defined Variables ------------------------
STUDENT_NAME="Dev Wandalkar"        # Stores student name
SOFTWARE_CHOICE="Apache HTTP Server" # Stores chosen software

# ----------- System Information Collection -----------------

# Get Linux kernel version
KERNEL=$(uname -r)

# Get current logged-in user
USER_NAME=$(whoami)

# Get system uptime in readable format
UPTIME=$(uptime -p)

# Get current date and time
DATE=$(date)

# Get Linux distribution name from OS release file
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

# ----------- Display Output -------------------------------

echo "========================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "========================================"
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "Home Directory  : $HOME"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE"
echo ""
# Display license information
echo "License Info    : Linux is typically licensed under the GNU General Public License (GPL)."
echo "========================================"
