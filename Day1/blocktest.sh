#!/bin/bash

#implementing and chekcing the package if installed or not 

echo "Verifying nc installation..."

if command -v nc >/dev/null 2>&1; then
    echo -e "nc is already installed \e[32m\u2714\e[0m"
    ncVersion=$(nc -h 2>&1 | head -n 1)
    echo "The nc version is: ${ncVersion}"
else
{
    echo -e "nc is not installed in the host \e[31m\u2718\e[0m"
    echo -e "\e[32mInstalling nc now ....\e[0m"

    sudo apt update -y
    sudo apt install -y netcat-openbsd

    echo -e "nc is now installed \e[32m\u2714\e[0m"

    # Get version after installation
    ncVersion=$(nc -h 2>&1 | head -n 1)
    echo "The nc version is: ${ncVersion}"
}
fi


echo ""
echo "Verifying docker installation..."

command -v docker >/dev/null 2>&1 && {
    echo -e "Docker is installed... \e[32m\u2714\e[0m"
    dockerVersion=$(docker --version 2>&1 | cut -d ' ' -f3)
    echo "The docker version is: ${dockerVersion}"
} || {
    echo -e "Docker is not installed \e[31m\u2718\e[0m"
}

