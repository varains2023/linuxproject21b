#!/bin/bash
#$naga=/var/log/messages
if [ /var/log/messages ]; 
then
    gzip /var/log/messages
    cat /dev/null > /var/log/messages
fi
