#!/bin/bash
set -e


cd home
git init
#TEMP=`git clone https://$@@github.com/AntonioJFSousa/Trading.git`

git clone https://$@@github.com/AntonioJFSousa/Trading.git



#echo $TEMP

#exec $TEMP

cd Trading/utrade

/tmp/node-v0.10.29-linux-x64/bin/node utrade.js
#utrade.js


#echo "ola"
#top