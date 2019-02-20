#!/bin/bash

i=0
j=a.html

while read p; do
 echo $i$j
 n=$( grep updated $i$j | wc -l )
 echo $n
 if [ $n -gt 499 ]
 then
  echo Yes.
  ./pull3 $i $p
 fi
 ((i++))
done < nlist
