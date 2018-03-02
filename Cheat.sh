#!/bin/bash

if [ $# = 2 ]
then

	arrList=(`ls -l $1`)
	echo "OWNER: " ${arrList[2]}
	echo "GROUP: " ${arrList[3]}
	echo "PERMISSIONS: " ${arrList[0]}
	echo "FILENAME: " $1

	if [ ${arrList[2]} = $2 ]
	then
		echo "CHEATING: 0"
	else
		echo "CHEATING: 1"
	fi

elif [ $# = 5 ]
then
	arr1=(`ls -l $2`
	arr2=(`ls -l $4`)	
	echo "OWNER: " ${arr1[2]}
	echo "GROUP " ${arr1[3]}
	echo "PERMISSIONS: " ${arr1[0]}
	echo "FILENAME: " $2

	echo "OWNER: " ${arr2[2]}
	echo "GROUP: " ${arr2[3]}
	echo "PERMISSIONS: " ${arr2[0]}
	echo "FILENAME: " $4

	echo "The difference between $2 and $4"

	echo `diff -c $2 $4`
	 var=$?	
	if [ $var = 1 ]
	then
		echo `diff -y $2 $4`
		echo "CHEATING: 0"
	else
		echo "There is no difference"
		echo "CHEATING: 1"
	fi
elif [ $# = 0 ]
then
	echo "No Arguments"
else
	echo "Wrong arguments"
fi
