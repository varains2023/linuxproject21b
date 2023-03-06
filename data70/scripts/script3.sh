#!/bin/bash
b=70
a=`df -h /data1 |grep -v 'Filesystem'|awk '{print $5}'|cut -d'%' -f1`
if [[ "$a" -ge "$b" ]]
then
	echo "###########send a mail ##################" > /dev/pts/1
else
	echo "###########with in the limit###########" > /dev/pts/1
fi
