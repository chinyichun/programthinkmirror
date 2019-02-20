#!/bin/bash

for i in $( ls *.html );
do
 echo $i
 n=$( grep updated $i | wc -l )
 echo $n
 if [ $n -gt 499 ]
 then
  echo Yes.
 fi
done
