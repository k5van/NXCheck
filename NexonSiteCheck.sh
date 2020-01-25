#!/bin/bash
checkURL () {
        if [ $((curl $1 | grep $2 | wc -l) 2>/dev/null) -gt 0 ]
        then
                resulturl=$url
                echo $url
                echo $url > SiteCheck$(date +"%m_%d_%Y").txt
        fi
}


counter=0
uri=http://maplestory.nexon.net/micro-site/
fileindex=$1

while [ $counter -lt $2 ]; do
        buffer=$((counter+50))
        while [ $counter -lt $buffer ]; do
                url=$uri$fileindex
             	$echo "$url $3"
		checkURL $url $3&
                fileindex=$((fileindex+1))
                counter=$((counter+1))
		wait
        done
        wait
done
wait
