#!/bin/bash

# write a shell script to find the pkg/file location path


pakgName=$1

command -v ${pakgname} && command -v ${pakgName} || echo "Package ${pakgName} is not found"





