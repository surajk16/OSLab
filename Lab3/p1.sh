#!/bin/bash

sums=0
num=$1

if [ $# -lt 1 ]
	then echo "No parameters found"
elif [ $(($1 / 100)) -ge 1 -a $(($1 / 1000)) -eq 0 ]
	then
	while [ $num -gt 0 ]
	do
		sums=$((sums + num % 10))
		num=$((num/10))
	done
  echo "Sum of the digits: $sums"
else
	echo "Not a 3-digit number."
fi

