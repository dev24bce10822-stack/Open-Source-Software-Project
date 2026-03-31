#!/bin/bash

# ==========================================================
# Script 5: Open Source Manifesto Generator
# Author: Dev Wandalkar
# Course: Open Source Software
# Description: Generates a personalized open-source manifesto
# ==========================================================

echo "========================================"
echo " Open Source Manifesto Generator"
echo "========================================"
echo ""

# ----------- User Input -----------------------------------

# Take input from user
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# ----------- System Info ----------------------------------

DATE=$(date '+%d %B %Y')          # Current date
USER_NAME=$(whoami)               # Current user
OUTPUT="manifesto_$USER_NAME.txt" # Output file name

# ----------- Generate Manifesto ---------------------------

echo "Generating your manifesto..."
echo ""

echo "On $DATE, I, $USER_NAME, reflect on the power of open source. Tools like $TOOL represent not just software, but a vision of $FREEDOM. I believe in building and sharing knowledge, and one day I aim to create $BUILD and contribute it freely to the community. Open source is not just about code, but about collaboration, transparency, and collective growth." > $OUTPUT

# ----------- Display Output -------------------------------

echo "Manifesto saved to $OUTPUT"
echo ""
echo "Your Manifesto:"
echo "----------------------------------------"
cat $OUTPUT
echo "----------------------------------------"

# ----------- Note on Alias (concept demonstration) --------
# Example alias (not executed):
# alias manifesto="cat $OUTPUT"
