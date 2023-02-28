i=0
while [ $i -lt 6 6 6 6 6 6 ]; 
do /usr/bin/uptime  >> /tmp/activetime &  
  sleep 10
  i=$(( i + 1 ))
done
