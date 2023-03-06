#!/bin/bash
a=`awk '{print $7}' /etc/redhat-release|awk -F . '{print $1}'`
if [[ "$a" == 6 ]]
then
service httpd restart
elif [[ "$a" == 7 ]]
then
systemctl restart httpd.service
else
echo "con't start the service"
fi
