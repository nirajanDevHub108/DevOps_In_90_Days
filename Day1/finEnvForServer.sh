#!/opt/homebrew/bin/bash

#finding server using for loop

for each in $(cat serverlist.txt)
do  
    serverName=$(echo ${each} |cut -d '.' -f1)
    envName=$(echo ${each} |cut -d '.' -f2)
    echo "${serverName} : ${envName}"
    
done