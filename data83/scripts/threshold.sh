#!/bin/bash

THRESHOLD=80

df_output=$(df -h)
while read -r line; do
  if [[ "$line" != Filesystem\ * && "$line" = /* && "$line" != tmpfs* ]]; then
    usage=$(echo "$line" | awk '{ print $5 }' | sed 's/%//')
    if [[ "$usage" -gt "$THRESHOLD" ]]; then
      echo "Warning: Filesystem usage is at ${usage}% on $line" | mail -s "Disk space alert" varains2186@egmail.com
    fi
  fi
done <<< "$df_output"

