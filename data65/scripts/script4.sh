#!/bin/bash

# Set the directory to search for old files
dir="/var/log/"

# Set the maximum age of files to compress (in days)
max_age=90

# Set the name of the compressed file
zip_file="/var/log/old_logs_$(date +%Y-%m-%d).tar.gz"

# Use find to locate files older than $max_age days and compress them using tar
find $dir -type f -mtime +$max_age -print0 | tar -czvf $zip_file --null -T -

# Remove the original files
find $dir -type f -mtime +$max_age -delete
