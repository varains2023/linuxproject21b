#!/bin/bash
THRESHOLD=70
EMAIL=rajanabhaskararao@gmail.com  # replace with the email address to send the alert to
USAGE1=$(df -h /boot | awk '{print $5}' | tail -n 1 | tr -d '%')
USAGE2=$(df -h / | awk '{print $4}' | tail -n 1 | tr -d '%')
USAGE3=$(df -h /home | awk '{print $4}' | tail -n 1 | tr -d '%')
USAGE4=$(df -h /tmp | awk '{print $4}' | tail -n 1 | tr -d '%')
USAGE5=$(df -h /var | awk '{print $4}' | tail -n 1 | tr -d '%')
USAGE6=$(df -h /opt | awk '{print $4}' | tail -n 1 | tr -d '%')
if [ $USAGE1 -gt $THRESHOLD ]
then
  SUBJECT="Disk usage on is over $THRESHOLD%"
  BODY=$(df -h /boot)
  echo "$BODY" | mail -s "$SUBJECT" $EMAIL
elif [ $USAGE2 -gt $THRESHOLD ]
then
  SUBJECT="Disk usage on is over $THRESHOLD%"
  BODY=$(df -h /)
  echo "$BODY" | mail -s "$SUBJECT" $EMAIL
elif [ $USAGE3 -gt $THRESHOLD ]
then
  SUBJECT="Disk usage on is over $THRESHOLD%"
  BODY=$(df -h /home)
  echo "$BODY" | mail -s "$SUBJECT" $EMAIL
elif [ $USAGE4 -gt $THRESHOLD ]
then
  SUBJECT="Disk usage on is over $THRESHOLD%"
  BODY=$(df -h /tmp)
  echo "$BODY" | mail -s "$SUBJECT" $EMAIL
elif [ $USAGE5 -gt $THRESHOLD ]
then
  SUBJECT="Disk usage on is over $THRESHOLD%"
  BODY=$(df -h /var)
  echo "$BODY" | mail -s "$SUBJECT" $EMAIL
elif [ $USAGE6 -gt $THRESHOLD ]
then
  SUBJECT="Disk usage on is over $THRESHOLD%"
  BODY=$(df -h opt)
  echo "$BODY" | mail -s "$SUBJECT" $EMAIL
else
 echo "no one cress the threshold limit"
fi
