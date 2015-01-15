#!/bin/bash
set -e


cd home

var temp = 'git clone https://'+$@+'@github.com/AntonioJFSousa/Trading.git'

echo temp

exec temp

#echo "ola"
#top