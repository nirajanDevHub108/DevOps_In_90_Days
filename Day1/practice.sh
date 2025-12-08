#!/bin/bash
#
# tool version and command operation of a given tool using command line
# author:nirajandevhub108
#

toolName=${1}

if [[ ${#} -ne 1 ]] ; then
	echo " Script need input "
	echo " Run this script"
        echo "<scriptName> <toolName>"
	exit 1
fi

if ! command -v ${toolName} 1>/dev/null 2>&1 ; then
	echo " The tool: ${toolName} is not exist in the host"
	exit 2
fi
<< PURPOSE
case ${toolName}  in
	docker )
		docker --version | cut -d ' ' -f3 | tr -d ','
		;;
	ansible )
		ansible --version | awk "NR==1" | cut -d ' ' -f3 | tr -d ']'
		;;
	java )
		java -version 2>&1 | awk "NR==1" | cut -d ' ' -f3 |tr -d '"'
		;;
	nginx )
		nginx -version  2>&1 | cut -d '/' -f2
		;;
	*)
		echo " we dont have a logic to find the version of the tool : ${toolName}"
		echo " just update this script to find the version of your tool"
		;;
esac
PURPOSE


if  command -v docker 1>/dev/null 2>&1 ; then
	dockerVersion=$(docker --version | cut -d ' ' -f3 | tr -d ',')
else
	dockerVersion="Not Found"
fi

ansibleVersion=$(ansible --version | awk "NR==1" | cut -d ' ' -f3 | tr -d ']')
javaVersion=$(java -version 2>&1 | awk "NR==1" | cut -d ' ' -f3 |tr -d '"')
nginxVersion=$(nginx -version  2>&1 | cut -d '/' -f2)

echo "ToolName    |     version"
echo "Docker ----------${dockerVersion}"
echo "ansible ----------${ansibleVersion}"
echo "Java ----------${javaVersion}"
echo "nginx ----------${nginxVersion}"

