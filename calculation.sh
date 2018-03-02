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




