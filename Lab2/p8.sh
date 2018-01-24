#!/bin/sh

if [ $# -lt 3 ]
	then echo "Not enough parameters"

else
	case $2 in
	  "+" ) echo "$1+$3 = `expr $1 + $3`";;
	  "-" ) echo "$1-$3 = `expr $1 - $3`";;
	  "/" ) echo "$1/$3 = `expr $1 / $3`";;
	  "x" ) echo "$1*$3 = `expr $1 \* $3`";;
	   *  ) echo "Operator not found";;
	esac
fi
