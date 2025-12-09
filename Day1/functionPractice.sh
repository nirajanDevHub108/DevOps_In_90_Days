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

#check if ther service is running or not

checkService(){
	serviceName=$1

	if systemctl is-active --quiet "$serviceName"; then
		echo " service '$serviceName' is active"
	else 
		echo "service '$serviceName' is in-active"
	fi
}

checkService docker

#validate tool in host
<< PURPOSE
valdiateTool(){
	if command -v ${1}  1>/dev/null 2>&1 ; then
		echo " Installed path: $(command -v ${1})"
		return 0
	else
		echo " Not Installed"
		return 1
	fi
}
PURPOSE

cat << EOF
$(uname)
$(whoami)
EOF

#ignoring variable and command expansion
myShell="linux"

cat << "EOF2"
${myShell}
$(whoami)
EOF2

#escape character
cat << EOF3
\${myShell}
$(whoami)
EOF3

#piping

cat << EOF4 | grep 'FIRST'
FIRST LINE
SECOND LINE
EOF4


