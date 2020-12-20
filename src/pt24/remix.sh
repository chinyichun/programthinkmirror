#!/bin/bash

c=a.xml

for i in `seq 0 700`
do
 echo $i
 if [ -e $i.out ]
 then
  ./tagstop.sh < $i$c > $i.header
  cat $i.header $i.out > $i.xml
 fi 
done
