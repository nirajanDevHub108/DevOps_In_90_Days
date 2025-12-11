#!/opt/homebrew/bin/bash

#System Health Checker with getopts + while

#Features:

#✔ Choose what to check
#✔ Supports: CPU, Memory, Disk
#✔ Runs continuously every X seconds

interval=5
cpu=false
memory=false
disk=false

while getopts "t:cmd" opt; do
    case $opt in
    t) interval="$OPTARG" ;;
    c) cpu=true;;
    m) memory=true;;
    d) disk=true;;
    *) echo "usage: $0 [-t sedonds] [-c] [-m] [-d]"; exit 1;;
    esac
done
while true; do
    echo "----- Health Check -----"

    [[ $cpu == true ]] && echo "CPU: $(top -l 1 | grep 'CPU usage')"
    [[ $memory == true ]] && echo "Memory: $(vm_stat | head -5)"
    [[ $disk == true ]] && echo "Disk: $(df -h /)"

    echo "------------------------"
    sleep "$interval"
done

