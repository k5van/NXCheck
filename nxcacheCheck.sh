#!/bin/bash

checkURL () {
	if [ $(( curl $1 | wc -c) 2>/dev/null) -gt 1000 ]
	then
		resulturl=$url
		echo $url
		echo $url > DMTCheck$(date +"%m_%d_%Y").txt
	fi
}


counter=0
uri="http://nxcache.nexon.net/cms/2019/q4/"
file='/'$1
fileindex=$2

while [ $counter -lt $3 ]; do
	buffer=$((counter+50))
	while [ $counter -lt $buffer ]; do
		url=$uri$fileindex$file".png"
		#echo $url
		checkURL $url&
		fileindex=$((fileindex+1))
		counter=$((counter+1))
	done
	wait
done
wait

	
