#!/bin/bash

for i in $( ls -d /root/blog/blog/html/*/ ); do
 echo item: $i
 cp -R $i .
done
