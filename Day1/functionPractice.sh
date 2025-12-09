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

