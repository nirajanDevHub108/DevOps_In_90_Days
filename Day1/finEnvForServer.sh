#!/opt/homebrew/bin/bash

#finding server using for loop
serverlistFile=${1}
outputFile=${serverListFile}.out

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

if [[ -e ${outputFile} ]]; then
    echo " ${outputFile} is already there now we are deleting it to write new info"
    rm ${outputFile}
fi

echo "ServerName : Environment" |tee -a ${outputFile}
for each in $(cat serverlist.txt)
do  
    
    serverName=$(echo ${each} |cut -d '.' -f1)
    envName=$(echo ${each} |cut -d '.' -f2)
    echo "${serverName} : ${envName}" | tee -a ${outputFile}

done