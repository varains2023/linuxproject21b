#!/bin/bash
cd /var/log
if [ -f messages ]; then
    if [[ $(find messages -mtime +6) ]]; then
        gzip -c messages > messages-$(date +'%Y-%m-%d').log.gz
        > messages
    fi
fi

