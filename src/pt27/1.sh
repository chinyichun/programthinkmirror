#!/bin/bash

wget --no-check-certificate -O out.html "https://program-think.blogspot.com/2021/01/12-years-blogging.html"

sed -n -e 's/^.*https:\/\/program-think.blogspot.com\/feeds\///p' out.html > out2
sed -n 3p out2 > out3
sed '0,/\//s//\n/' out3 > out4
q=$(head -n 1 out4)
echo $q
wget --no-check-certificate -O out5 "https://program-think.blogspot.com/feeds/$q/comments/default?max-results=0"
sed 's/<\/feed>/\n<\/feed>\n/g' out5 > out6
