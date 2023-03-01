#!/bin/bash
a=`find /var/log/ -mtime +90`
sleep 5
tar -cvf /var/log/3_monthsold.tar $a
sleep 5
gzip /var/log/3_monthsold.tar
