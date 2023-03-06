#!/bin/bash
echo "enter a value"
read avalue
a=$avalue
echo "enter b value"
read bvalue
b=$bvalue
c=$(expr $a + $b)
echo
echo "c value=$c"
Footer
© 2023 GitHub, Inc.
