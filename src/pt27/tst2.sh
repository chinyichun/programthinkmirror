#!/bin/bash

while read p
do
 read q
 read r
 if [ ! -d $p ]
 then
  mkdir $p
 fi
 cd $p
 if [ ! -d $q ]
 then
  mkdir $q
 fi
 cd $q
 pwd
 cd ..
 cd ..
done < out7.xml
