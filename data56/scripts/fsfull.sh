#!/bin/sh
ALERT=70 # alert level
ADMIN="sanitbalu@gmail.com" # dev/sysadmin email ID
df -Ph | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read -r output;
do
  #echo "$output" > /dev/null
  usep=$(echo "$output" | awk '{ print $1}' | cut -d'%' -f1 )
  partition=$(echo "$output" | awk '{ print $2 }' )
  fs=$(df -Ph|grep $partition)
  if [ $usep -ge $ALERT ]; then
    echo -e "$fs \n  Running out of space \"$partition ($usep%)\" on $(hostname) as on $(date)" | sendmail -s "File System is full"  $ADMIN
  #  mail -s "Alert: Almost out of disk space $usep%" "$ADMIN"
 # else
 #       echo "##########with in the limit############" > /dev/null
  fi
done
