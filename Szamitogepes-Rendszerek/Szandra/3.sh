#!/bin/sh
val=1
cat nev.txt | cut -d":" -f2 > azon.txt
cat nev.txt | cut -d":" -f1 > nevek.txt
for i in `cat azon.txt`
do
mkdir $i
echo Szia  `cat -n nevek.txt | grep -h $val | cut -f 2,3 ` > neniked.txt
echo "#!/bin/sh" '\n'echo `cat neniked.txt` > .profile
rm neniked.txt
val=`expr $val + 1`
cp .profile $i
rm .profile
done
rm nevek.txt
rm azon.txt