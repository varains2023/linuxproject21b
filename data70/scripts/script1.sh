#!/bin/bash
a=`date +%m%d%y`
sleep 5
cd /var/log/
sleep 5
tar -cvf /var/log/messages$a.tar messages
if [[ "$?" === 0 ]]
then
gzip messages$a.tar
cat /dev/null > /var/log/messages
fi
