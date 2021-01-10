#!/bin/bash

i=0

while read p
do
 echo $p
 echo $i
 a="h1><a\x20href=\"..\/..\/forum5\/"
 b=".xml\">浏览本博文的相关论坛<\/a><\/h1>\n<h1>"
 c="sed -i -e 0,/h1>/{s/h1>/$a$i$b/} .$p"
 echo $c 
 $c
 ((i++))
done < mlist 
