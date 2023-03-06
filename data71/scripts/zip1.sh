#!/bin/bash

if [ /var/log/messages ]; then
    gzip /var/log/messages-$(date +%Y%m%d)
    cat /dev/null > /var/log/messages
fi
