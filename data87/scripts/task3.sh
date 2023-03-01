#!/bin/bash
while true; do
    df -h | awk '{if ($5 >= 70) print}' | mail -s "Filesystem threshold exceeded" srinubandi1234@gmail.com
    sleep 120
done

