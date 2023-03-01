#!/bin/bash
zip /var/log/messages-$(date +%y%m%d) /var/log/messages
if [ $? == 0 ]
then
cat /dev/null > /var/log/messages
fi
