#!/bin/bash
cd /var/log
for file in $(find . -maxdepth 1 -type f -mmin +3); do
    if [[ -f $file ]]; then
        gzip -c $file > $file-$(date +'%Y-%m-%d').log.gz
        > $file
    fi
done

