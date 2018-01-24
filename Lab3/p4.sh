#!/bin/bash

hour=`date +%k`

if [ $hour -ge 5 -a $hour -le 12 ]
	then echo "Good morning!"
elif [ $hour -ge 13 -a $hour -le 17 ]
	then echo "Good afternoon!"
fi
