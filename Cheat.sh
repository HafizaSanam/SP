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
else
	echo "No arguments"
fi
