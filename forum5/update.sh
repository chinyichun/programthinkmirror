#!/bin/bash

i=0
while read p; do
 read q <&3
 read r <&4
 if [ "$q" -ne "$r" ]
 then
  echo $p
  cat "$i"a.xml | sh getfirst $(expr $q - $r) > $i.out
  head -1 $i.xml > $i.head
  tail -n +2 $i.xml > $i.tail
  cat $i.head $i.out $i.tail > $i.xml
 fi
 ((i++))
done <nlist 3<newww 4<olddd

rm *.head
rm *.out
rm *.tail
rm *a.xml
