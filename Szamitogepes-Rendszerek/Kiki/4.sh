#!/bin/sh

cp $1 negyedikmegoldas.txt
sed -i 's/500/otszaz/g' negyedikmegoldas.txt
sed -i 's/50/otven/g' negyedikmegoldas.txt
sed -i 's/5/ot/g' negyedikmegoldas.txt