#!/bin/bash

sed '7,11d' index.html > indexnew.html
rm index.html
mv indexnew.html index.html

cd ./projects/
ls -1 > /Users/JacksonRoth/Documents/github/captainpoprocks.github.io/activeprojects.txt
cd /Users/JacksonRoth/Documents/github/captainpoprocks.github.io/
lam ./activeprojects.txt -s " <br>" > activeprojects4html.txt
gsed '6r activeprojects4html.txt' < index.html > tempPkgLs.txt
mv tempPkgLs.txt index.html
rm activeprojects.txt
rm activeprojects4html.txt
