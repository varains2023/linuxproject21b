#!/bin/bash
a=awk  '{ print $4 }' /etc/redhat-release | awk -F . '{print$1}'
if [["$a" == 6]];
then
service httpd start
else
echo "hi vk"
fi
if [["$a" == 7]];
then
systemctl enable httpd.service
else
echo "hi teja"
fi
$a
