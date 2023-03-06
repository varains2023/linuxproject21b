#!/bin/bash
a=`find /var/log/ -mtime +90`
tar -cvf /var/log/3_monthsold.tar $a
gzip /var/log/3_monthsold.tar
