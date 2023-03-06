#!/bin/bash

# Define the log file path
log_file="/var/log/messages"

# Get the current date
current_date=$(date +%F)

# Define the backup file name as messages_date
backup_file="messages_$current_date.zip"

# Check if the log file exists
if [ -f $log_file ]; then

  # Zip the log file
  zip $backup_file $log_file

  # Check if the zip was successful
  if [ $? -eq 0 ]; then
    echo "Successfully created $backup_file"
  else
    echo "Failed to create $backup_file"
  fi

else
  echo "$log_file does not exist"
fi
