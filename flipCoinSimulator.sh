#!/bin/bash -x

echo "Welcome to Flip coin simulator"

read -p "Enter number of times you want to flip the coin: " count

tailNum=0
headNum=0

for ((i=0; i<$count; i++))
do
	face="$((RANDOM%2))"

	if [ $face -eq 1 ]
	then
		tailNum=$(($tailNum+1))
	else
		headNum=$(($headNum+1))
	fi
done

echo "Tails showed up ${tailNum}"
echo "Heads showed up ${headNum}"
