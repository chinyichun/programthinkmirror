#!/bin/bash

for i in `ls -- *.jpg`
do
 j=`basename -- $i .jpg`
 mv -- $i $j
done
