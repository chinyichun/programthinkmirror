#!/bin/bash

sed -i -e 's/https:\/\/program-think.blogspot.com/./g' index.html
sed -i -e 's/http:/https:/g' index.html
