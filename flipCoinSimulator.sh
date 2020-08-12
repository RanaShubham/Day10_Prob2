#!/bin/bash -x

echo "Welcome to Flip coin simulator"

tailNum=0
headNum=0

while [ true ]
do
	face="$((RANDOM%2))"

	if [ $face -eq 1 ]
	then
		tailNum=$(($tailNum+1))
	else
		headNum=$(($headNum+1))
	fi
	
	
	if [[ $tailNum -eq 21 || $headNum -eq 21 ]]
	then
		break
	fi
done

if [[ $tailNum -eq 21 && $headNum -eq 21  ]]
then
	echo "It was a tie"
elif [[ $tailNum -ge $headNum ]]
then
	diff=$(( $tailNum - $headNum ))
	echo "Tails won by $diff"
else
	diff=$(( $headNum - $tailNum ))
	echo "Heads won by $diff"
fi
