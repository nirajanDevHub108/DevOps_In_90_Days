#!/bin/bash
#

declare -a myValues

myValues=(1,2,3,45,)
echo "${myValues}"

declare -a myVal
myVal=(1 "hi" "bash shell" 5 6 7 8)

echo "${myVal[@]}"
