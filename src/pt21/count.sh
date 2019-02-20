#!/bin/bash

c=a.html
d=b.html
e=c.html

for i in `seq 0 618`
do
 if [ -e $i$e ]
 then
  j=0
  q=$(head -n 1 $i$e)
  while read p
  do
   if [ "$p" = "$q" ]
   then
    break
   fi
   ((j++))
  done <$i$d
  cc=`wc -l <$i$e`
  echo $(expr 499 + $j + $cc)
 elif [ -e $i$c ]
 then
  a=`wc -l < $i$c`
  if [ -e $i$d ]
  then
   b=`wc -l < $i$d`
   echo $(expr $a + $b - 1)
  else
   echo $a
  fi
 else
  echo 0
 fi
done
