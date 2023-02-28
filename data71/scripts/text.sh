#!/bin/bash
echo "enter commnad :"
read command
$command
if [[ "$?" == 0 ]]
then
echo "command successfull , greate"
else
echo "command failed to run"
fi
