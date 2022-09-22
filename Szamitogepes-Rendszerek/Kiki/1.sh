#!/bin/sh
if [ $((`expr $2 - $3`%$1)) -eq 0 ]
then
echo "Osztható!"
exit 0
fi
echo "Nem osztható!"
