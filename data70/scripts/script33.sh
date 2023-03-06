#!/bin/bash
b=70
#a=`df -Ph  |grep -v 'Filesystem'|awk '{print $5}'|cut -d'%' -f1`
a=`df -Ph  |grep -v 'Filesystem'|awk '{print $1 "  " $6}'`
c=`df -Ph  |grep -v 'Filesystem'|awk '{print $5}'|cut -d'%' -f1`
#c= `$a |awk '{print $2}'|cut -d'%' -f1` 
#d= `$a |awk '{print $1 " " $3}'`
for k in $c
do
	if [[ $c -ge $b ]]
	then
	echo "###########send a mail $k is full  ##################" > /dev/pts/1
	echo "Running out of space \"$a ($c%)\" on $(hostname) as on $(date)" | sendmail chmail@baluins.com
	else
	echo "###########with in the limit###########" |sendmail chmail@baluins.com
	fi
done
