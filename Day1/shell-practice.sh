#!/bin/bash

myValue=134
myShell=bash

echo ${myValue}${myShell}

echo *

myCmdOutput=$(date)
echo ${myCmdOutput}
hostname=$(hostname)

echo "hi ${hostname} $(date)"
echo "${hostname}"
echo  '${hostname}'

dockerVersion=$(docker --version | cut -d ' ' -f3 | tr -d ',')

echo "_______________________________________"
echo "| Tool Name  | Version   |"
echo "_______________________________________"
echo "| Docker     | ${dockerVersion} |"
echo "_______________________________________"


echo -e "${dockerVersion}\n${hostname} "

echo -e "[\033[0;36m welcome to bash scripting"


echo -e "\e[0;31mThis is simple test line. \e[0m"

#read -p "enter your name:" name
#echo "Hello , $name!"
#read -s -p "Enter your password: " password
#echo " passwords recived(not displayed)."

#while IFS= read -r line; do#	echo "line: $line"
#done < readme.txt

echo "______________________________________________"
: <<'COMMENT'
if read -t 5 -p "Enter something within 5 secconds: " input; then
	echo "You intered: $input"
else
	echo "Timeout reached"
fi
COMMENT

today=$(date)
echo "${today}"

ram="ram is  man"
echo "${ram}"




