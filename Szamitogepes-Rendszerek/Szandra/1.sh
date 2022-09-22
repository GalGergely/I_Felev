#!/bin/sh

el=$1
for i in $*
do
  if [ $el -gt $i ]
  then
    echo "A sorozat nem monoton novekvo"
    exit 0
  fi
  el=$i
done
echo "A sorozat monoton novekvo"