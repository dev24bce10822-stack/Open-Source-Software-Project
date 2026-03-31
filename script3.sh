#!/bin/bash
# ==========================================================
# Script 3: Disk and Permission Auditor
# Author: Dev Wandalkar
# Course: Open Source Software
# Description: Checks directory size, ownership, and permissions
# ==========================================================

# ----------- Directory List -------------------------------
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo "        Directory Audit Report"
echo "========================================"
# ----------- Loop Through Directories ---------------------
for DIR in "${DIRS[@]}"; do

    # Check if directory exists
    if [ -d "$DIR" ]; then

        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')

        # Get size of directory
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"

    else
        echo "$DIR does not exist on this system"
    fi

done
# ----------- Apache Config Directory Check ----------------

echo ""
echo "Apache Configuration Directory Check:"
CONFIG_DIR="/etc/apache2"

if [ -d "$CONFIG_DIR" ]; then
    PERMS=$(ls -ld $CONFIG_DIR | awk '{print $1, $3, $4}')
    echo "$CONFIG_DIR exists => Permissions: $PERMS"
else
    echo "$CONFIG_DIR does not exist"
fi
echo "========================================"
