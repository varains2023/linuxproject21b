#!/bin/bash

# Get the current date minus 3 months
three_months_ago=$(date -d "3 months ago" +%Y%m%d)

# Find all files in /var/log/ that are at least 3 months old
files_to_zip=$(find /var/log/ -type f -mtime +90)

# Zip each file found
for file in $files_to_zip; do
  gzip "$file"
done
