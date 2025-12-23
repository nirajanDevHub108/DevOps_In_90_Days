#!/opt/homebrew/bin/bash
# Given two integers,  and , identify whether  or  or .
#
# Exactly one of the following lines:
# - X is less than Y
# - X is greater than Y
# - X is equal to Y
#
# Input Format
#
# Two lines containing one integer each ( X and , Y respectively).
#
# Constraints
#
# -
#
# Output Format
#
# Exactly one of the following lines:
# - X is less than Y
# - X is greater than Y
# - X is equal to Y


read X
read Y

if [[ X -lt Y ]]; then
   echo "X is less than Y"
elif [[ X -gt Y ]] ; then
    echo "X is greater than Y"
else
    echo "X is equal to Y"
fi

python -c "import math"