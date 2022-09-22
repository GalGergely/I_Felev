#!/bin/sh
if [ -z "$3" ]
then
echo Nem adott meg elég argumentumot
exit 0
fi
val=`expr $1 \* 2`
if [ $val -gt $2 ]
then
  if [ $3 -gt $val ]
  then
  echo Igen
  exit 0
  fi
fi
if [ $val -gt $3 ]
then
  if [ $2 -gt $val ]
  then
  echo Igen
  exit 0
  fi
fi
echo Nem

