#!/bin/sh
cp names1.txt names.txt 
sed -i 's/Mr/ur/g' names.txt
sed -i 's/Ms/holgy/g' names.txt
cat names.txt | cut -d" " -f2 > nev.txt
nev=`cat names.txt | cut -d" " -f2`
vezeteknev=`cat names.txt | cut -d" " -f3`
rang=`cat names.txt | cut -d" " -f1`
echo $vezeteknev'\n'$nev'\n'$rang > megoldas.txt
rm names.txt
rm nev.txt