#!/bin/bash

###############################
# Author : NirajanDevHub
# Date: 22/12/2024
#
# This script output of the health
# Version: v1
###############################

set -x #debug mode
set -e #exit the script when there is an error 
set -o pipefail


df -h 


free -g

nproc 

ps -ef | grep amazon | awk -F" " '{print $2}'


