#!/bin/bash

i=0
while read p
do
 read q <&3
 read r <&4
 if [ "$q" -ne "$r" ]
 then
  echo $p
  a="wget --no-check-certificate -O"
  b="a.xml https://program-think.blogspot.com/feeds/"
  c="/comments/default?max-results="
  d=$(expr $q - $r)
  e="$a $i$b$p$c$d"
  $e

  sed 's/<entry>/\n<entry>/g' "$i"a.xml > $i.out
  sed 's/<\/feed>/\n/g' $i.out > $i.out2
  tail -n +2 $i.xml > $i.tail
  cat $i.out2 $i.tail > $i.xml
 fi
 ((i++))
done <nlist 3<newww 4<olddd

rm *.out
rm *.out2
rm *.tail
rm *a.xml
