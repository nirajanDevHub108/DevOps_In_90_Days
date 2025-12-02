#!/bin/bash

read -p "Enter Count : " count

echo "Enter $count numbers:"
for (( i=0; i<count; i++)); do
	read num
	arr[i]=$num
done 

largest=${arr[0]}

for num in "${arr[@]}"; do
    if [ "$num" -gt "$largest" ]; then
        largest=$num
    fi
done

echo "Largest elemnt is : ${largest}"

