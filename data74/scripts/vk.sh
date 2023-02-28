#!/bin/bash
vk= awk '{ print $4 }' /etc/redhat-release | awk -F . '{print$1}' 
if [[ "$vk" == 7 ]];
then
systemctl start httpd.service
else
service  httpd start
fi
