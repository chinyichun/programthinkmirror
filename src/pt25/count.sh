#!/bin/bash

for i in `seq 0 701`
do
 j=`cat $i.xml | wc -l`
 echo $(expr $j - 1)
done
