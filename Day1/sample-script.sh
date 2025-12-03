#!/bin/bash

x=5
echo ${x}

#inputs and output for variable

#input for variable
#  directly defining var value in scripts itself
#  using read command
#  using source conecpt
#  using export command
#  using command line arguments 
#  using options with the help of while loop

#output the variable values

# echo
# cat commnd with here-doc
# printf
#

# Block of execution in shell


#{ls ; pwd ; date ;} #if we want three or more command one by one we can seprate by semicolon;
#ls && {pwd ; date;}

#docker command if it is there display the version and 
{
    echo -e "nc is not installed in the host \e[31m\u2718\e[0m";
    echo -e "\e[32m Installing nc now ....";
    sudo apt install -y netcat-openbsd;
    echo -e "Nc is now installed now \e[32m\u2714\e[0m";
    ncVersion=$(nc --version 2&>1 | cut -d ' ' -f3);
    echo " The nc version is ${dockerVersion}";
 
 }
echo "verifying the docker instalation"
command -v docker 1>/dev/null 2>/dev/null && { echo -e "Docker is installed...\e[32m\u2714\e[0m " ; dockerVersion=$(docker --version 2>&1 | cut -d ' ' -f3) ; echo " The docker version is ${dockerVersion}"; }

#if docker is not present then what you will do
#!/bin/bash

# Perform some operation
if command_succeeded; then
    echo -e "Operation successful! \e[32m\u2714\e[0m"
else
    echo -e "Operation failed. \e[31m\u2718\e[0m" # Red 'X' for failure
fi











