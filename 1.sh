#!/bin/bash

sed -n 's:.*<published>\(.*\)</published>.*:\1:p' prev.xml > prev.out
sed -n 's:.*<published>\(.*\)</published>.*:\1:p' curr.xml > curr.out

q=$(head -n 1 prev.out)
i=0
while read p
do
 if [ "$p" = "$q" ]
 then
  break
 fi
 ((i++))
done <curr.out

if [ "$i" -gt 490 ]
then
 echo "SPAM ALERT!"
 exit
fi

if [ "$i" -lt 1 ]
then
 echo "NO CHANGE!"
 rm out*.xml
 rm *.out
 rm new*.xml
 mv curr.xml prev.xml
 rm cur.xml
 exit
fi

echo $i

head -n $i curr.xml > neww.xml
tac neww.xml > newww.xml
#sed '0,/<entry>/s//\n<entry>/' neww.xml > newww.xml

sed -n -e 's/^.*http:\/\/purl.org\/syndication\/thread\/1.0\x27\x20href=\x27//p' newww.xml > out3.xml
cat out3.xml | cut -f 1 -d " " > out4.xml
sed 's/\x27/\x20/g' out4.xml > out5.xml
sed -n -e 's/^.*https:\/\/program-think.blogspot.com\///p' out5.xml > out6.xml
sed 's/\//\n/g' out6.xml > out7.xml

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
 if [ ! -e $r.xml ]
 then
  wget --no-check-certificate -O out "https://program-think.blogspot.com/$p/$q/$r"
  sed -n -e 's/^.*https:\/\/program-think.blogspot.com\/feeds\///p' out > out2
  sed -n 3p out2 > out3
  sed '0,/\//s//\n/' out3 > out4
  q=$(head -n 1 out4)
  echo $q
  wget --no-check-certificate -O out5 "https://program-think.blogspot.com/feeds/$q/comments/default?max-results=1"
  sed 's/<entry>/\n<entry>/g' out5 > out6
  sed 's/<\/feed>/\n<\/feed>\n/g' out6 > out7
  sed -e '2d' out7 > $r.xml
  rm out*
  #printf "line 1\nline 2\nline 3\n" > $r.xml
 fi
 head -1 $r.xml > daeh
 tail -n +2 $r.xml > liat
 head -1 ../../newww.xml > middle
 cat daeh middle liat > $r.xml
 rm daeh middle liat
 cd ..
 cd ..
 tail -n +2 newww.xml > liat
 mv liat newww.xml
done < out7.xml

rm out*
rm *.out
rm new*.xml
mv curr.xml prev.xml
rm cur.xml
