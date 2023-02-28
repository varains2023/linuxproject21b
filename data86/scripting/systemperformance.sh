#!/bin/bash
REPORT_FILE=/tmp/system_report_$(date +%Y%m%d).txt
echo "System Performance Report" > $REPORT_FILE
echo "Generated at $(date)" >> $REPORT_FILE
echo "" >> $REPORT_FILE
echo "CPU Usage:" >> $REPORT_FILE
mpstat >> $REPORT_FILE
echo "" >> $REPORT_FILE
echo "Memory Usage:" >> $REPORT_FILE
free -h >> $REPORT_FILE
EMAIL_ADDRESS="varains2186@gmail.com"
echo "Sending report to $EMAIL_ADDRESS..."
cat $REPORT_FILE | mail -s "System Performance Report" $EMAIL_ADDRESS
echo "Report sent!"

