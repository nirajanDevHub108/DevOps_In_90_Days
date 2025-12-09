#!/bin/bash

#function practice question

sayHello() {
	echo "welcome to Bash function !"
}

#calling the function

sayHello

greet(){
	echo "Hello, $1!"
}
greet Nirajan

addNumbers(){
	result=$(( $1 + $2 ))
	echo $result
}

sum=$(addNumbers 5 10)
echo " sum is : ${sum}"

demo (){
	local x=100
	echo "Inside function: x = $x"
}

x=5
demo
echo "Outside function  x = $x"

#function calling other function

main(){
      sayHello
      echo "This is your DevOps Shell Script practice."
}
main

name(){
	echo "hello, $1"
}
name nirajan

todayDate(){
	date

}
todayDate


# to check if the file exist or not
#
checkfile(){
	if [[ -f "$1" ]]; then
		echo "File '$1' exixts"
	else
		echo "File '$1' does not exists"
	fi
}
checkfile calculator.sh


