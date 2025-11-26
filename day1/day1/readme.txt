log enabled

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

#echo [-neE] [arguments]

2nd is options with arguments

docker --version

if we have to print only the version number 
docker --version | cut -d ' ' -f3
or
docker --version | cut -d ' ' -f3 | tr -d ','

Ansible :
ansible --version |aek 'NR==1 {print $2'

if we want to store in variable 
dockerVersion=$(docker --version | cut -d ' ' -f3 | tr -d ',')


options:

-n: do not append a new line or trailing newline is suprresed
-e: enable supress interpretation of backslash escapes
-E: explicitly suprress interprestation of backslash escapes

note:
with option & arg it will show empty line

color coding in bash scripting


Basic Color Codes:

    Foreground Colors (Text Color):
        \e[0;30m Black
        \e[0;31m Red
        \e[0;32m Green
        \e[0;33m Yellow (often appears as Brown in older terminals)
        \e[0;34m Blue
        \e[0;35m Purple (Magenta)
        \e[0;36m Cyan
        \e[0;37m White (Light Gray) 
    Background Colors:
        \e[40m Black Background
        \e[41m Red Background
        \e[42m Green Background
        \e[43m Yellow Background
        \e[44m Blue Background
        \e[45m Purple Background
        \e[46m Cyan Background
        \e[47m White Background

example
echo -e "\e[0;31mThis text is red.\e[0m"
echo -e "\e[0;34mThis text is blue with a \e[42mgreen background\e[0m."



Read command to provide inputs for variable

read [options][variable]

-p: op the prompts string beafore reading out
-r: disables the execution of escaped char /raw input this is imp while reading file line by line
-s: silent mode  disable echoing like user id or passwords does not echo the user input on terminal while passing to script
-a ARRY_NAME: Assigns the input words to an index array
    read -a colors -p "Enter some colors: "
    echo "First color: ${colors[0]}"
-n: NUM_CHARS: read specified number of char
    read -n 5 -p "Enter 5 characters: " chars
    echo "You entered: $chars"
-t TIMEOUT: set timeout for reding input if input is not recived it will exit with non-zero status
    if read -t 5 -p "Enter something within 5 seconds: " input; then
        echo "You entered: $input"
    else
        echo "Timeout reached."
    fi

source command to provide inputs in a file we can directly define and call that var from other sources

source [File name]

myVar=test

export command to provide inputs for var
export command exports the variable from the shell,making them global and available in each sub-shell
syntax: export varName=varValue


















