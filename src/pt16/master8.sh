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
  a="wget --no-check-certificate -O"
  b="c.xml https://program-think.blogspot.com/feeds/"
  c="/comments/default?max-results=999&start-index=1000"
  d="$a $i$b$p$c"
  echo $d
  $d
 fi
 fi
 ((i++))
done < nlist
