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
uri="http://nxcache.nexon.net/cms/2018/"
file="/maplestory_marvel_header.jpg"
fileindex=$1

while [ $counter -lt $2 ]; do
	buffer=$((counter+50))
	while [ $counter -lt $buffer ]; do
		url=$uri$fileindex$file
		checkURL $url&
		fileindex=$((fileindex+1))
		counter=$((counter+1))
	done
	wait
done
wait

	
