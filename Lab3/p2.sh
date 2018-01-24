#!/bin/bash

iskaprekar()

{
    if [ $1 -eq 1 ]
       then echo "1 is a Kaprekar number."

    else
 
    sq_n=$(($1*$1))
    count_digits=0
    
    while [ $sq_n -gt 0 ]
    do
        count_digits=$((count_digits+1))
        sq_n=$((sq_n/10))
    done
 
    sq_n=$(($1*$1))
 
    r_digits=1

	while [ $r_digits -lt $count_digits ]
	do
		eq_parts=$((10 ** $r_digits))

		
		if [ $eq_parts -eq $1 ]
		then r_digits=$((r_digits+1))
		continue
		fi

		sums=$((sq_n / eq_parts + sq_n % eq_parts))
		if [ $sums -eq $1 ]
		then echo "Yes it is a Kaprekar number."
			 echo "$1^2 = `expr $1 \* $1`"
			 echo "$1 = `expr $sq_n / $eq_parts` + `expr $sq_n % $eq_parts`"
		return 1
		fi

		r_digits=$((r_digits+1))
	
	done

	echo "It is not a Kaprekar number."

	fi	

}

echo "Enter a number: "
read my_val

iskaprekar $my_val
