#!/bin/bash

#for i in `seq 700 -1 0`
do
 j=$((i+1))
 mv $i.xml $j.xml
done
