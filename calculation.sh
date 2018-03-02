#!/bin/bash

if [ $# == 0 ]
then
	read -p "Enter 1st Number " n1
	read -p "Enter 2nd Number " n2
	echo "Sum is:"
	echo `expr $n1 + $n2`

	echo "Difference is:"
	echo `expr $n1 - $n2`
	 
	echo 'Product is: '
	echo `expr $n1 \* $n2`
	if [ n2 != 0 ]
	then
	      echo 'Division is:'
	      echo `expr $n1 / $n2`
	fi
	if [ n2 = 0 ]
	then
		echo 'Wrong Input'
	fi
fi
if [ $# != 0 ]
then
		echo 'Sum is:' `expr $1 + $2`
		echo 'Product is:' `expr $1 \* $2`
		echo 'Difference is:' `expr $1 - $2`
	   	if [ $2 = 0 ]
		then
			echo 'Wrong input'
		fi
		if [ $2 != 0 ]
		then
		echo 'Division is:' `expr $1 / $2`
		fi
		echo 'Mod is: ' `expr $1 % $2`		
fi




