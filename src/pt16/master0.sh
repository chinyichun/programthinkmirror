#!/bin/bash

i=0

while read p; do
 echo $p
 echo $i
 a="wget --no-check-certificate -O"
 b="a.xml https://program-think.blogspot.com/feeds/"
 c="/comments/default?max-results=999"
 d="$a $i$b$p$c"
 echo $d
 $d
 ((i++))
done < nlist 
