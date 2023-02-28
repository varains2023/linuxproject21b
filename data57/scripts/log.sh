#!/bin/bash
mkdir -p /var/log/logbkp-$(date +%y%m%d)
a=`find /var/log -type f -mtime +60`
cp $a /var/log/logbkp-$(date +%y%m%d)/.
tar -zcvf /var/log/logbkp-$(date +%y%m%d).tar.gz /var/log/logbkp-$(date +%y%m%d)
if [ $? == 0 ]
then
rm -rf /var/log/logbkp-$(date +%y%m%d)
fi
