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


