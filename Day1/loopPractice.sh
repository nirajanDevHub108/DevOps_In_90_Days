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
while read line
do
	echo "you types: $line"
done



