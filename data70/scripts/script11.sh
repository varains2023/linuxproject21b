#!/bin/bash
a=`date +%m%d%y`
cat /var/log/messages > /var/log/messages$a
if [[ "$?" == 0 ]]
then
gzip /var/log/messages$a
sleep 10
cat /dev/null > /var/log/messages
fi
