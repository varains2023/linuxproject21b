#!/bin/bash
for k in `ls case*`
do
echo "####################$k#####################" >> debugfile
cat $k >> debugfile
done
