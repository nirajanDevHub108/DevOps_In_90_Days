#!/opt/homebrew/bin/bash


# Check if nginx service exists
<<PURPOSE
if ! brew list nginx >/dev/null 2>&1 ; then
    echo "nginx is not installed. Installing now..."
    brew install nginx
fi

# Check if nginx is running
if brew services list | grep -q "nginx.*started"; then
    echo "nginx is already up and running"
    exit 0
for each in $(seq 4)
do
    echo "nginx is not running"
    echo "starting it now ...."
    brew services start nginx
    sleep 10
done
fi

# Verify again
if brew services list | grep -q "nginx.*started"; then
    echo "nginx is now running"
else
    echo "nginx did not enter running state"
fi
PURPOSE

# for each in $(ls) #ansible,vim, ${@}
# do
#      echo " your file is : ${each}"

#    if command -v ${each}  1>/dev/null 2>&1 ; then
# 		echo "${each} is already deployed"
#    else
# 		echo "${each} is not installed"
#    fi

# done

# for (( i=0;i<5;i++ ))
# do 
# echo " this is one more loop syntax"
# done

declare -a myPkg
declare -A devOpsTool
devOpsTool=([containerTool]=docker [configurationTool]=ansible [integration]=jenkins)
myPkg=(ansible httpd nginx vim nc)

# echo "${myPkg[@]}"
# echo "${!myPkg[@]}"

# for eachvalue in ${!myPkg[@]}
# do
#    echo " The value is : ${myPkg[${eachvalue}]}"
# done

# for eachvalue in ${!devOpsTool[@]}
# do 
# 	echo "Value is : ${devOpsTool[${eachvalue}]}"
# done

#while loop
# count=1
# while [ $count -le 5 ]
# do
# 	echo "Number: ${count}"
# 	count=$((count +1))
# done

#This script waits until a file appears:
# file="myfile.txt"
# while [ ! -f "$file" ]
# do
# 	echo "waiting for $file ..."
# 	sleep 2
# done
# echo "$file is created"

#While loop with input
# while read line
# do
# 	echo "you types: $line"
# done

#Countdown Timer (User Input Based)
# read -p "enter countdown second: " sec

# while [ $sec -gt 0 ] 
# do
# 	echo "⏳ Time left: $sec seconds"
# 	sleep 1
# 	sec=$((sec -1 ))
# done

#Password Prompt Until Correct
# correctPass="devops123"

# while true
# do
# 	read -s -p "enter the password: " pass
# 	echo
# 	if [[ ${pass} == ${correctPass} ]]; then
# 		echo "✔ Access Granted"
# 		break
# 	else
# 		echo "❌ Wrong password. Try again."
#     fi
# done

# 3 File Watcher – Detect File Changes
# file="serverlist.txt"
# last_modification=$(stat -f "%m" "$file")
# while true
# do
# 	current_mod=$(stat -f "%m" "$file")
# 	if [ "$current_mod" != "$last_modification" ]; then
# 		echo "File '$file' chnaged"
# 		last_modification=$current_mod
# 	fi
# done

# #4 Simple Menu System
# while true
# do
# 	echo "-------- Menu --------"
#     echo "1. Show date"
#     echo "2. List files"
#     echo "3. Show uptime"
#     echo "4. Exit"
#     echo "----------------------"
    
# 	read -p "choose an option" op

# 	case $op in
# 		1) date ;;
# 		2) ls ;;
# 		3) uptime ;;
# 		4) echo "Bye"; break ;;
# 		*) echo "Invalid option" ;;
# 	esac
# done

#getopts arguments 
# file=""
# cout=0
# verbose=true

# while getopts "f:c:v" opt; do
# 	case $opt in
# 		f)file="$OPTARG";;
# 		c)count="$OPTARG";;
# 		v)verbose=true;;
# 		*)echo "Unknown option" ;;
# 	esac
# done

# echo "file: $file"
# echo "count: $count"
# echo "verbose: $verbose"

#While + getopts + Real Logic
#📌 Script to Validate & Print Lines from a File

file=""
line=0

while getopts "f:n" opt; do
	case $opt in
		f) $file="$OPTARG" ;;
		n) $line="OPTARG" ;;
		*) echo "Inavlid opton"; exit 1;;
	esac
done

if [[! -f "$file" ]]; then
	echo "file does not exist"
	exit 1
fi

echo "Printing $lines lines from $file:"
count=0

while read -r line; do
	