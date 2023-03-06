#!/bin/bash
echo " enter command"
read command
a=`$command`
if [[ "$?" == 0 ]];
then
echo "command is successful"
else
echo "commnad is not run"
fi
echo
echo
echo "command output : $a"
