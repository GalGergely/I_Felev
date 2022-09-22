#!/bin/sh

echo `grep -v "a" bead.txt > tobbi.txt`
echo `grep "a" bead.txt > a.txt`