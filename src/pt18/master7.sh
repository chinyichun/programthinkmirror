#!/bin/bash

i=0
j=b.html
l=c.html
k="forum4/"

while read p; do
 echo $p
 echo $i
 a="h1><a\x20href=\"..\/..\/forum4\/"
 b="a.html\">浏览本博文的相关论坛甲版<\/a><\/h1>\n<h1>"
 c="sed -i -e 0,/h1>/{s/h1>/$a$i$b/} .$p"
 echo $c 
 $c
 if [ -e $k$i$j ]
 then
  echo EXISTS!
  echo $k$i$j
 a="h1><a\x20href=\"..\/..\/forum4\/"
 b="b.html\">浏览本博文的相关论坛乙版<\/a><\/h1>\n<h1>"
 c="sed -i -e 0,/h1>/{s/h1>/$a$i$b/} .$p"
 echo $c 
 $c
 fi
 if [ -e $k$i$l ]
 then
  echo EXISTS C!
  echo $k$i$l
 a="h1><a\x20href=\"..\/..\/forum4\/"
 b="c.html\">浏览本博文的相关论坛丙版<\/a><\/h1>\n<h1>"
 c="sed -i -e 0,/h1>/{s/h1>/$a$i$b/} .$p"
 echo $c 
 $c
 fi
 ((i++))
done < mlist 
