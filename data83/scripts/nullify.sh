#!/bin/bash

backup_dir="/var/log/backups"

if [ ! -d "$backup_dir" ]; then
  mkdir "$backup_dir"
fi

filename="messages-$(date +%Y%m%d%H%M%S).tar.gz"

tar -czvf "$backup_dir/$filename" /var/log/messages

cat /dev/null > /var/log/messages

