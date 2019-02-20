#!/bin/bash

i=0
j=b.html
l=c.html
k="forum2/"

while read p; do
 echo $p
 echo $i
 ./link2a $i < .$p > out
 cp out .$p
 if [ -e $k$i$j ]
 then
  echo EXISTS!
  echo $k$i$j
  ./link2b $i < .$p > out
  cp out .$p
 fi
 if [ -e $k$i$l ]
 then
  echo EXISTS C!
  echo $k$i$l
  ./link2c $i < .$p > out
  cp out .$p
 fi
 ((i++))
done < mlist 
