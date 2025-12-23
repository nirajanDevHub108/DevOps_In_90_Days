#!/opt/homebrew/bin/bash
# Given three integers (, , and ) representing the three sides of a triangle, identify whether the triangle is scalene, isosceles, or equilateral.

# If all three sides are equal, output EQUILATERAL.
# Otherwise, if any two sides are equal, output ISOSCELES.
# Otherwise, output SCALENE.
# Input Format
# Three integers, each on a new line.
# Constraints

# The sum of any two sides will be greater than the third.
# Output Format
# One word: either "SCALENE" or "EQUILATERAL" or "ISOSCELES" (quotation marks excluded)
read X
read Y
read Z

if [[ ${X} -eq ${Y} ]] && [[ ${X} -eq ${Z} ]] && [[ ${Y} -eq ${Z} ]] ; then
    echo "EQUILATERAL"
elif [[ ${X} -eq ${Y} ]] || [[ ${X} -eq ${Z} ]] || [[ ${Y} -eq ${Z} ]]; then
    echo "ISOSCELES"
else
    echo "SCALENE"
fi