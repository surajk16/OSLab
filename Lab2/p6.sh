#!/bin/sh

count=$#

if [ $count -lt 3 ]
	then echo "Not enough parameters"
else
	if [ $1 -ge $2 -a $1 -ge $3 ]
		then echo "$1 is the greatest number of the three."
	elif [ $2 -ge $1 -a $2 -ge $3 ]
		then echo "$2 is the greatest number of the three."
	else echo "$3 is the greatest number of the three."
	fi
fi
		
