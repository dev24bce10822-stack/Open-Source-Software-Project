#!/bin/bash

# ==========================================================
# Script 2: FOSS Package Inspector
# Author: Dev Wandalkar
# Course: Open Source Software
# Description: Checks if a package is installed and displays info
# ==========================================================

# ----------- Variable --------------------------------------
PACKAGE="apache2"   # Package name (Apache HTTP Server)

# ----------- Check Installation ----------------------------
# Check if package is installed using dpkg
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed on this system."
    # Display package details (Version, License, Description)
    echo ""
    echo "Package Information:"
    dpkg -l $PACKAGE | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed on this system."
fi

# ----------- Case Statement (Philosophy Notes) -------------
echo ""
echo "Philosophy Note:"

case $PACKAGE in
    apache2)
        echo "Apache: Backbone of the open web, enabling free and open access to information."
        ;;
    mysql)
        echo "MySQL: Open source database powering millions of applications."
        ;;
    vlc)
        echo "VLC: Media freedom — play anything without restrictions."
        ;;
    firefox)
        echo "Firefox: A browser built to keep the web open and user-focused."
        ;;
    *)
        echo "Unknown package — open source promotes collaboration and freedom."
        ;;
esac
