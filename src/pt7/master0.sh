#!/bin/bash

i=0
while read p; do
 echo $p
 echo $i
 ./pull2 $i $p
 ((i++))
done < nlist 
