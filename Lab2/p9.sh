#!/bin/bash

num=`expr $RANDOM % 101`
counter=1

echo "Guess my secret number (0-100): "
read userval

if [ $userval -eq $num ]
	then echo "Right! You guessed my secret in $counter guess."
else
	while [ $userval -ne $num ]
	do
		if [ $userval -gt $num ]
		then echo "Guess lower"
		else echo "Guess higher"
		fi
	read userval
	counter=$((counter + 1))
	done
	echo "Right! You guessed my secret in $counter guesses."
fi

