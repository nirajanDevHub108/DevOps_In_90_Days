#!/bin/bash
#

declare -a myValues

myValues=(1,2,3,45,)
echo "${myValues}"

declare -a myVal
myVal=(1 "hi" "bash shell" 5 6 7 8)

echo "${myVal[@]}"


#read -p "Enter your name " name
#echo "Hello ${name}, welcome to shell scripting!"


#read -p "Enter number 1 :" num1
#read -p "Enter number 2 :" num2

#sum=$((num1 + num2))
#echo "${sum}"

#if [ $sum -gt 50 ]; then
	echo "Sum is greater than 50"
#else
	echo "Sum is 50 or less"
#fi


color=( "red" "blue" "black" "purple" "orange")
echo "first : ${color[0]} Third :${color[2]} last :${color[@]: -1}"

echo "${#color[@]}"

