#!/bin/bash

rm *.html
for i in $( ls *.xml ); do
 echo item: $i
 i2=${i%".xml"}
 echo i2: $i2
 xsltproc -o $i2.html atom.xsl $i
done
