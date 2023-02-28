#!/bin/bash
cat /etc/auto.master|tail -n 5
cat /etc/passwd|grep -i 6000
echo "##########################"
echo "##########################"
ls /home/redoA/.ssh/
ls /home/redoB/.ssh/
echo "##########################"
echo "##########################"
cat /etc/passwd|grep -i 700
echo "##########################"
echo "##########################"
cat /home/redoA/.ssh/authorized_keys
cat /home/redoB/.ssh/authorized_keys
echo "##########################"
echo "##########################"
ls -l /home/redoA/

echo "##########################"
echo "##########################"
rpm -qa|grep -i vsftpd
chkconfig --list|grep -i vsftpd

