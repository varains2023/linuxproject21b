#!/bin/bash

# Set the threshold for disk usage percentage
threshold=70

# Get the output of the 'df' command and extract the filesystem usage percentage
output=$(df -P)
usage=$(echo "$output" | awk '$NF == "/" {print $5}' | sed 's/%//')

# Check if usage is a numeric value
if ! [[ $usage =~ ^[0-9]+$ ]]; then
    echo "Error: disk usage is not a numeric value"
    exit 1
fi

# Compare the usage percentage with the threshold
if [ $usage -gt $threshold ]; then
    # If usage is above threshold, send an email to the specified email address
    echo "Disk usage is above threshold! Usage is currently at $usage%" | mail -s "Disk Usage Warning" krishnareddymaram216@gmail.com
fi
