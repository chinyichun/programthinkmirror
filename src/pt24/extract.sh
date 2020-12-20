#!/bin/bash

c=a.xml
d=b.xml

for i in `seq 0 700`
do
 echo $i
 read n
 if [ -e $i$c ]
 then
  if [ "$n" -le 500 ]
  then
   cat $i$c | sh getfirst $n > $i.out 
  else
   cat $i$c | sh getfirst 499 > "$i"a.out
   cat $i$d | sh getfirst $(expr $n - 499) > "$i"b.out
   cat "$i"a.out "$i"b.out > $i.out
  fi
 fi 
 # echo $n
done < newww
