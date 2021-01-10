#!/bin/bash

for i in `seq 0 701`
do
 sed -n 's:.*<published>\(.*\)</published>.*:\1:p' $i.xml > $i.out
 sort $i.out > $i.sorted
 echo $i.xml

 q="blah"
 while read p
 do
  # echo $p
  # echo $q
  # echo "---"
  if [ "$p" = "$q" ]
  then
   echo "FAILURE!"
   echo $i
   echo "---"
   break
  fi
  q=$p
 done <$i.sorted

 rm $i.out
 rm $i.sorted
done
