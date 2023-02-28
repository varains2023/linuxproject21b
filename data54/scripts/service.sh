#!/bin/bash
if cat /etc/redhat-release | grep "release 6" ;then
service httpd restart
else cat /etc/redhat-release | grep "release 7"
systemctl restart httpd.service
fi
