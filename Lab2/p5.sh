#!/bin/sh

count=$#

if [ $count -lt 2 ]
	then
	echo "Can't find 2 parameters"
else
	echo "The sum of the 2 numbers is `expr $1 + $2 ` "
fi
