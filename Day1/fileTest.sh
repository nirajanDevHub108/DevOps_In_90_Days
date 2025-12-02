#!/bin/bash

read -p "Enter the any number of files: " -a fileName


for f in "${fileName[@]}"; do
	if [ -f "$fileName" ]; then
		echo " file '${f}' exist"
	else 
		echo " file '${f}' does not exist"
	fi
done
