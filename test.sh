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
echo '${hostname}'

