#!/bin/bash
cd /tmp/
for k in dir{1..10}
do
mkdir $k
	if [[ $? == 0 ]]
	then
	 for l in file{1..4}
	 do
	 touch "$l"
	 echo "this is $l"  > $l
	 done
	fi
	cd $k
	a=`pwd`
	cd $a
done
