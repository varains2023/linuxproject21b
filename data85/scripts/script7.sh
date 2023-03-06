#!/bin/bash
a=`find /var/log/ -mtime +90`
#cat $a > /tmp/30days
sleep 5
for k in $a
do
cp -pvr $a /var/log/3_months/
sleep 5
gzip /var/log/3_months/*
done
