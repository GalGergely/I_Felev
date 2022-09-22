#!/bin/sh
val=0
if [ -z "$1" ]
then
echo Nem adott meg elég argumentumot
exit 0
fi
for i in $*
do
  if [ $i -gt $val ] 
  then
  val=$i
  fi
done
echo $val