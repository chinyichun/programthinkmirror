#!/bin/bash

i=0

q=$(head -n 1 16c.html)

while read p
do
 if [ "$p" = "$q" ]
 then
  break
 fi
 ((i++))
done <16b.html

echo $i
