#!/bin/sh
a=$1
b=$2
for i in `seq 1 5`
do
echo $a
a=`expr $a + $b`
done