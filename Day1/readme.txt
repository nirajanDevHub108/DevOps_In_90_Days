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


ansible --version | awk "NR==1" | cut -d ' ' -f3 | tr -d ']'

docker --version | cut -d ' ' -f3 | tr -d ','

nginx -version  2>&1 | cut -d '/' -f2

java -version 2>&1 | awk "NR==1" | cut -d ' ' -f3 |tr -d '"'



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

command line arguments to provide inputs for variable
passing arguments using command line 

./filename value argumnets

it is accessed via $1,2,3..$n
$0 represent the script file
best practice is to use it using curly braces ${1}
$# - gives you the number of argument passed to script


shift 1 it will shift the values by 1
Note:
shift will have no operation at ${0}


Basic operation on string

get char/len of string: use #
concaniation of string:  var = ${} ${}
convert into lower and upper case:
uppercase ${my_var^^}
lowercase ${my_var,,}

slicing of string:
${strvar:startingindex:lemgth}

bash =
0123
${myVar:2:3}
we can also use cut command :

echo "${myshell}" | cut -c 1-9

replacing the part of the string:
${varstr/oldstr/newstr}

✅ What dirname does

dirname removes the last part of a file path (everything after the last /)
and returns only the directory path.

✅ Basic rule

It removes everything after the last slash

If no slash, it returns "." (current directory)

📌 Examples
1️⃣ Normal path
dirname /home/user/file.txt
Output:
/home/user
2️⃣ Nested path
dirname /opt/devops/scripts/test.sh

Output:
/opt/devops/scripts

3️⃣ Path without /
dirname file.txt

Output:
.
(Meaning: current directory)

🚀 dirname with multiple paths

Yes, you can give multiple paths in one command:

dirname /a/b/c.txt /x/y/z.log
Output:
/a/b
/x/y

basename:strips directory information or strips suffixes from the file names
basename /home/nirajandevhub/devops/Day1
day1


bash Arrays:
array is also a variable but it is useful to store multiple value into one variable
creating an  array:
declare -a myArray
myArray=(1 2 3 4 5)
we can store different values in one arr variable 
values can be of same or diff types
if values is having aspace then keep you value inside quotes
ex: myVal=(1 ,"hi" "bash shell" 5 6 7 8"


bash Dictionary variable
Bash dictonory are the same array variable but these are useful to store values based on custom keys instead of index values

declare -A myDict
myDict=([name]=docker [version]=1.13.1)


#exit status of a command 
form inter value 0-255 when it is executed
we can capture this return status using "$?"
if value is 0 mean true else failed

we can also store exit status in  var 
like:  cmdStatus=$? or smdStatus=${?}
















