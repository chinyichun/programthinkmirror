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
  a="wget --no-check-certificate -O"
  b="b.xml https://program-think.blogspot.com/feeds/"
  c="/comments/default?max-results=999&start-index=500"
  d="$a $i$b$p$c"
  echo $d
  $d
 fi
 ((i++))
done < nlist
