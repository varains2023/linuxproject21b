#!/bin/bash
THRESHOLD=20
EMAIL=rajanabhaskararao@gmail.com  # replace with the email address to send the alert to
IDEL=$(sar 1 2 |tail -n 1|awk '{print $8}'|awk -F . '{print $1}')
if [ $IDEL -le $THRESHOLD ]
then
  SUBJECT="cpu available on is less then $THRESHOLD%"
  BODY=$(sar 1 2)
  echo "$BODY" | mail -s "$SUBJECT" $EMAIL
else
 echo "server performance is good"
fi
