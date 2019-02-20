#!/bin/bash

i=0
l=c.xml

while read p; do
 read q <&3
 if [ "$p" -gt 1000 ] || [ "$q" -gt 1000 ]
 then
  if [ -e $i$l ]
  then
  echo -e "$p $q $(( p - q )) \t $i $j \t EXISTS!"
  else
  echo -e "$p $q $(( p - q )) \t $i $j \t NULL!"
  fi
 fi
 ((i++))
done <point 3<newww
