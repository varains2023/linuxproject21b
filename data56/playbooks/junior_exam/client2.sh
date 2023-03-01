#!/bin/bash
rpm -qa |grep -i kernel*
cat /boot/grub/grub.conf |grep -i default
echo "#########################"
uname -r
