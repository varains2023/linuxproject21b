#!/bin/bash
mkdir /tmp/$HOSTNAME.backup
source /tmp/vars
cp $LOGPATH/messages $TARPATH
