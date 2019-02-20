#!/bin/bash

while read p; do
 echo $p
 read q <&3
 echo $q
 read r <&4
 echo $r
done <filea 3<fileb 4<filec
