
#!/bin/bash

# ==========================================================
# Script 4: Log File Analyzer
# Author: Dev Wandalkar
# Course: Open Source Software
# Description: Counts keyword occurrences in a log file
# ==========================================================

# ----------- Input Arguments ------------------------------
LOGFILE=$1                     # First argument → log file path
KEYWORD=${2:-"error"}         # Second argument → keyword (default: error)
COUNT=0                       # Counter for matches

# ----------- File Check -----------------------------------
# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# ----------- Empty File Check (Retry Logic) ---------------
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: File is empty. Retrying in 2 seconds..."
    sleep 2
    if [ ! -s "$LOGFILE" ]; then
        echo "File is still empty. Exiting."
        exit 1
    fi
fi

# ----------- Read File Line by Line -----------------------
while IFS= read -r LINE; do
    # Check if line contains keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# ----------- Output Summary -------------------------------
echo "========================================"
echo "Log Analysis Report"
echo "========================================"
echo "File       : $LOGFILE"
echo "Keyword    : $KEYWORD"
echo "Occurrences: $COUNT"

# ----------- Show Last 5 Matching Lines -------------------
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
echo "========================================"
