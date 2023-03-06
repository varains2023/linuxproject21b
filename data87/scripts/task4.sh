#!/bin/bash
while true; do
    top -b -n 1 > top-output-$(date +'%Y-%m-%d-%H-%M-%S').log
    mail -s "System Performance Report" srinubandi1234@gmail.com < top-output-$(date +'%Y-%m-%d-%H-%M-%S').log
    sleep 60
done

