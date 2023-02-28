#!/bin/bash
for k in `cat /opt/commands`
do
$k >> /opt/output/command_output
done
for k in `cat /opt/config_files`
do
cp -pvr $k /opt/output/backup_output
done
tar -cvf /opt/output/output.tar `ls /opt/output/*_output`
#tar -uvf /opt/output/output.tar $k
gzip /opt/output/output.tar
