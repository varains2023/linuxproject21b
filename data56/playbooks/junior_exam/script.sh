#!/bin/bash
pvs
echo "######################"
echo "######################"
echo "######################"
lvs
echo "######################"
echo "######################"
lvs -a -o+devices
echo "######################"
echo "######################"
df -h /dmart/users
echo "######################"
echo "######################"
cat /etc/exports
echo "######################"
echo "######################"
ls /dmart/users/
echo "######################"
echo "######################"
cat /etc/passwd|grep -i 6000
cat /etc/passwd|grep -i 7000

echo "######################"
echo "######################"
ls /home/app01/.ssh/
ls /home/app02/.ssh/
echo "######################"
echo "######################"
cat /home/app01/.ssh/authorized_keys
cat /home/app02/.ssh/authorized_keys

echo "######################"
echo "######################"
ls -l /home/app01/
cat /home/app01/SCRIPT
echo "######################"
echo "######################"
rpm -qa|grep -i vsftpd
chkconfig --list|grep -i vsftpd

echo "######################"
echo "######################"
ethtool eth1
echo "######################"
echo "######################"

