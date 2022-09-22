#!/bin/sh
a=$1
val=0
b=`expr $a - 1`
for i in `seq 1 $b`
do
  if [ $((a%i)) -eq 0 ]
    then
    val=`expr $val + $i`
    fi
done

if [ $val -gt $a ]
then
echo "Bővelkedő"
else
echo "Nem bővelkedő"
fi


