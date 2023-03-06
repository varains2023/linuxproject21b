#!/bin/bash
for u in `more sshuser.txt`
do
echo $u
ssh $u
done
