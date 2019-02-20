#!/bin/bash

for i in $( ls /root/blog/blog/html/ ); do
 if [ "index.html" != "$i" ]
 then
 echo item: $i
 rm -R $i 
 fi
done
