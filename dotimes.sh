#!/bin/bash
#author:zhaoming23@gmail.com
#date:2017-02-24 16:05:23
if [ -z "$2" ] ; then 
	echo "usage: $0 times command sleep" 
	echo " e.g.: $0 2 ls 3" 
	exit 1; 
fi 

dotimes=$1
loopcommand=$2
sleeptimes=$3
echo -e "dotimes:\033[41;37m$dotimes\033[0m \
loopcommand:\033[42;37m$loopcommand\033[0m \
sleeptimes:\033[44;37m${sleeptimes:=1}\033[0m"

#for((i=0;i<${dotimes:=1};i++));do echo $loopcommand;eval $loopcommand;sleep ${sleeptimes:=1};done
for((i=0;i<${dotimes:=1};i++));do eval $loopcommand;sleep ${sleeptimes:=1};done
