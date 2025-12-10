#!/opt/homebrew/bin/bash

#finding server using for loop
serverlistFile=${1}

if [[ $# -ne 1 ]]; then
    echo "The script need one input, that is the file name"
    echo "usage"
    echo "<scriptName> <serverListFile>"
    exit 1
fi

if [[ -e ${serverlistFile} ]]; then
    echo "input file is valid file"
else 
    echo " input file does not exits on host"
    exit 2
fi

if [[ -e output.txt ]]; then
    echo "output txt is all ready there now we are deleting it to write new info"
    rm output.txt
fi

echo "ServerName : Environment" |tee -a output.txt
for each in $(cat serverlist.txt)
do  
    
    serverName=$(echo ${each} |cut -d '.' -f1)
    envName=$(echo ${each} |cut -d '.' -f2)
    echo "${serverName} : ${envName}" | tee -a output.txt

done