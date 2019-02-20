#!/bin/bash

for i in $( ls *.xml ); do
 echo item: $i
 ./secure < $i > out
 cp out $i
done
