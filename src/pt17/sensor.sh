#!/bin/bash

while read p; do
 read q <&3
 if [ "$p" -gt 1000 ] || [ "$q" -gt 1000 ]
 then
  echo "$p $q $(( p - q ))"
 fi
done <point 3<newww
