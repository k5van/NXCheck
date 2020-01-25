#!/bin/bash

checkURL () {
	#echo $1
	if grep -Fxq "$1" MarvelList.txt
	then
		echo "	Already in Marvel"
	elif [ $(( curl -g $1 | wc -c) 2>/dev/null) -gt 500 ]
	then
		resulturl=$url
		echo "	valid"
		echo $url >> MarvelList.txt
	else
		echo "	invalid"
	fi
}


counter=0
uri=http://nxcache.nexon.net/maplestory/shop/gachapon/img/items/
file=.png
echo "Enter Item Nam:"

while [ 1 ]; do
	read item
	filename=${item// /-}
	url=$uri$filename$file
	checkURL $url	
	
done
wait

	
