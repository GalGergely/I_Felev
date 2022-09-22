#!/bin/sh
echo Begin:
read val
echo Increment:
read in
echo n:
read n
echo $val $in $n
for i in `seq 1 $n`
do
echo $val
val=`expr $val + $in`
done