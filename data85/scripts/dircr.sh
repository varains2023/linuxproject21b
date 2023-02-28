!/bin/bash
cd /tmp/
for k in dir{1..10}
do
cd $k
	if [[ $? == 0 ]]
	then
	echo "$k is ok"
	 	for l in file{1..4}
	 	do
	 	a=`cat $l`
	 		if [[ $a == "this is $l" ]]
			then
			echo " $l is ok" 
			fi
		done
	else
		echo "directory is not created"
	fi
done
