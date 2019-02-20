#!/bin/bash

mv newww olddd
rm neww
wget --no-check-certificate -O 2017.html https://program-think.blogspot.com/2017/
wget --no-check-certificate -O 2016.html https://program-think.blogspot.com/2016/
wget --no-check-certificate -O 2015.html https://program-think.blogspot.com/2015/
wget --no-check-certificate -O 2014.html https://program-think.blogspot.com/2014/
wget --no-check-certificate -O 2013.html https://program-think.blogspot.com/2013/
wget --no-check-certificate -O 2012.html https://program-think.blogspot.com/2012/
wget --no-check-certificate -O 2011.html https://program-think.blogspot.com/2011/
wget --no-check-certificate -O 2010.html https://program-think.blogspot.com/2010/
wget --no-check-certificate -O 2009.html https://program-think.blogspot.com/2009/
sed -n -e 's/^.*\#comments\x27>//p' 2017.html >> neww
sed -n -e 's/^.*\#comments\x27>//p' 2016.html >> neww
sed -n -e 's/^.*\#comments\x27>//p' 2015.html >> neww
sed -n -e 's/^.*\#comments\x27>//p' 2014.html >> neww
sed -n -e 's/^.*\#comments\x27>//p' 2013.html >> neww
sed -n -e 's/^.*\#comments\x27>//p' 2012.html >> neww
sed -n -e 's/^.*\#comments\x27>//p' 2011.html >> neww
sed -n -e 's/^.*\#comments\x27>//p' 2010.html >> neww
sed -n -e 's/^.*\#comments\x27>//p' 2009.html >> neww
cat neww | cut -f 1 -d " " > newww
