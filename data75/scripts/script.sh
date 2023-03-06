#!/bin/bash
echo "hello"
uname -a
uptime
who -r
df -h
cat /etc/fstab
cat /etc/sysctl.conf
########################################################
echo "hello" >> /tmp/script_output
uname -a  >> /tmp/script_output
uptime  >> /tmp/script_output
who -r  >> /tmp/script_output
df -h  >> /tmp/script_output
cat /etc/fstab  >> /tmp/script_output
cat /etc/sysctl.conf  >> /tmp/script_output
gzip /tmp/script_output
