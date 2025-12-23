#!/opt/homebrew/bin/bash
# A mathematical expression containing +,-,*,^, / and parenthesis will be provided. Read in the expression, then evaluate it. Display the result rounded to  decimal places.

# All numeric values are <= 999.
# Sample Input 1
# 5+50*3/20 + (19*2)/7

# read expr

# result=$(echo "scale=5; $expr" | bc -l)

# printf "%.3f\n" "$result"



# added problem on taking n input then storing it in arr looping the array value to calculate sum using bc -l to calculate the avg and getting it in 3 decimal place using printf
read n

arr=()
for(( i=0; i<n; i++ )); do
    read num
    arr+=("$num")
done
sum=0

for value in "${arr[@]}";
do
    sum=$((sum+value))
done
avg=$(echo "$sum / $n" | bc -l)
printf "%.3f\n" "${avg}"

