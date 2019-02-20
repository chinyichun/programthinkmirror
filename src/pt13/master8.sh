#!/bin/bash

i=0
j=b.html

while read p; do
 echo $i$j
 if [ -e $i$j ]
 then
  n=$( grep updated $i$j | wc -l )
  echo $n
  if [ $n -gt 499 ]
  then
   echo Yes.
   ./pull4 $i $p
  fi
 fi
 ((i++))
done < nlist
