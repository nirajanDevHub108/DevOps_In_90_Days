#!/bin/bash

var="hello world"
echo $var > file.txt


#if statments

if [ -f /etc/passwd ]; then
	echo "file exists"
else
	echo "file missing"
fi


#string comparison

if [ "$user" == "ubuntu" ]; then
	echo "you are nirajandevub"
fi

echo $1 $2 $3 

