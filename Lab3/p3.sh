#!/bin/bash

global_var=0

numSquareSum () 
{
	squareSum=0
	n=$1

	while [ $n -gt 0 ]
	do
	squareSum=$((squareSum + (n % 10) * (n % 10)))
	n=$((n/10))
	done

	global_var=$squareSum
}

isHappyNumber ()
{
	numSquareSum $1
	slow=$global_var
	numSquareSum $1
	fast=$global_var
	numSquareSum $fast
	fast=$global_var


	while [ $slow -ne $fast ]
	do
	numSquareSum $slow
	slow=$global_var
	numSquareSum $fast
	fast=$global_var
	numSquareSum $fast
	fast=$global_var
	done

	if [ $slow -eq 1 ]
	then echo "It is a happy number"

	else
	echo "Not a happy number"
	fi

}


echo "Enter a number: "
read my_val
isHappyNumber $my_val
