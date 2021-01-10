#!/bin/bash

while read p
do
 rm -- .$p.xml
done <mlist
