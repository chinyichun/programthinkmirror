#!/bin/bash

for i in $( ls *.xml ); do
 echo item: $i
 ./erase < $i > out
 cp out $i
 i2=${i%".xml"}
 echo i2: $i2
 xsltproc -o $i2.html atom.xsl $i
done
