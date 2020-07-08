#!/bin/bash
DATE="july-8"
GENDERS="female"
TYPES="face faces"
v2=""
TRANSPARENT=""
for type in $TYPES; do
	for gender in $GENDERS; do
		./nxcacheCheck.sh royal-$types-$gender$TRANSPARENT$v2 $1 $2
		./nxcacheCheck.sh royal-$gender-$types$TRANSPARENT$v2 $1 $2
		./nxcacheCheck.sh $gender-royal-$type$TRANSPARENT$v2 $1 $2
		./nxcacheCheck.sh royal-$types-$gender$TRANSPARENT-maplestory-$DATE-cash-shop-update$v2 $1 $2
		./nxcacheCheck.sh royal-$types-$gender$TRANSPARENT-$DATE-cash-shop-update$v2 $1 $2
		./nxcacheCheck.sh royal-$gender-$type$TRANSPARENT-maplestory-$DATE-cash-shop-update$v2 $1 $2
		./nxcacheCheck.sh royal-$gender-$type$TRANSPARENT-$DATE-cash-shop-update$v2 $1 $2
		./nxcacheCheck.sh $gender-royal-$type$TRANSPARENT-$DATE-cash-shop-update$v2 $1 $2
		./nxcacheCheck.sh $gender-royal-$type$TRANSPARENT-maplestory-$DATE-cash-shop-update$v2 $1 $2
		./nxcacheCheck.sh new-$gender-royal-$type$TRANSPARENT-maplestory-$DATE-cash-shop-update$v2 $1 $2
		./nxcacheCheck.sh new-royal-$gender-$type$TRANSPARENT-maplestory-$DATE-cash-shop-update$v2 $1 $2
	done
done
