#!/bin/bash

i=0
while read p
do
 mv -- ./forum5/$i.xml .$p.xml
 ((i++))
done <mlist
