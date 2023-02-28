#!/bin/bash
yum clean all
sleep 5
yum repolist
sleep 5
yum update kernel -y
echo "kernel is update to date 28122022" > /etc/latest_bundle
