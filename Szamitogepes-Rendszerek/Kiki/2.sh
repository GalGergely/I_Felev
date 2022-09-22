#!/bin/sh
val=0
for i in `cat $1`
do
  if [ $i -gt $2 ]
  then
  val=`expr $val + $i`
  fi
done
echo $val