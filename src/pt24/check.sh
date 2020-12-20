#!/bin/bash

for i in `seq 0 700`
do
 if [ -e $i.out ]
 then
  cat $i.out | wc -l
 fi 
 # echo $n
done
