#!/bin/sh
a=$1
b=`expr $1 - 1`
if [ $a -eq 1 ]
then
  echo "NEM PRÍM SHORTCUT"
  exit 0
fi
if [ $a -eq 0 ]
then
  echo "NEM PRÍM SHORTCUT"
  exit 0
fi
for i in `seq 2 $b`
do
  if [ $((a%i)) -eq 0 ]
  then
    echo "Nem prím"
    exit 0
  fi
done
echo "Prím"