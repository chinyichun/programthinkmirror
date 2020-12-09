#!/bin/bash

a=a.xml
b=b.xml
c=c.xml

#for i in `seq 699 -1 0`;
do
 j=$((i+1))
 mv $i$a $j$a
 if [ -e $i$b ]
 then
  mv $i$b $j$b
 fi
 if [ -e $i$c ]
 then
  mv $i$c $j$c
 fi 
done
