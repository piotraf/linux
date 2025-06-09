#!/usr/bin/env bash

BASE=/var/tmp/xmls
mkdir -p "$BASE"

for offset in $(seq 0 13); do
    # Calculate the date string for the current offset
    day=$(date -d "$offset days ago" +%Y-%m-%d)

    # First file for the day
    file1="$BASE/${day}_1.xml"
    echo "<root/>" > "$file1"
    touch -d "$day 12:00" "$file1"

    # Second file for the day
    file2="$BASE/${day}_2.xml"
    echo "<root/>" > "$file2"
    touch -d "$day 12:05" "$file2"

done
