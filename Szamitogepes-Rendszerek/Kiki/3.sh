#!/bin/sh
vissza=1
x=1
val=2
for i in `seq 2 $1`
do
  for j in `seq 2 $vissza`
  do
    if [ $((val%j)) -eq 0 ]
    then
    x=0
    fi
  done
vissza=`expr $vissza + 1`
val=`expr $val + 1`
  if [ $x -eq 1 ]
  then
  echo $vissza
  fi
  x=1
done