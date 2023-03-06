#!/bin/bash

three_months_ago=$(date -d "3 months ago" +%Y-%m-%d)

find /var/log -type f -mtime +91 | while read file; do
    if [[ $file != *.gz ]]; then
        gzip "$file"
        mv "$file.gz" "$file-$three_months_ago.gz"
    fi
done
