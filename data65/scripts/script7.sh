!/bin/bash

# Set the log file path
LOGFILE=/var/log/system-performance.log

# Get the date and time for the log entry
DATE=$(date "+%Y-%m-%d %H:%M:%S")

# Get the system performance data using sar
sar -u -r -n DEV -f /var/log/sa/sa$(date "+%d" --date='yesterday') | tail -n 2 | sed "s/^/$DATE /" >> $LOGFILE
