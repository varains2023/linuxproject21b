#!/bin/bash
a= awk '{print $7}' /etc/redhat-release | awk -F. '{print $1}'

#its ok
if [[ "$a" == 6 ]] ;
then
systemctl restart vsftpd.restart
fi

#if not
if [[ $a == 7 ]]
then
service httpd restart
fi
