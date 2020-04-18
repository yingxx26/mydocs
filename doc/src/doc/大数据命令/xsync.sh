#!/bin/bash

if [[ $# -lt 1 ]] ; then echo no params ; exit ; fi

p=$1
#echo p=$p
dir=`dirname $p`
#echo dir=$dir
filename=`basename $p`
#echo filename=$filename
cd $dir
fullpath=`pwd -P .`
#echo fullpath=$fullpath

user=`whoami`
for (( i = 4 ; i <= 9 ; i = $i + 1 )) ; do
   echo ======= storage$i =======
   rsync -lr $p ${user}@storage$i:$fullpath
done ;
