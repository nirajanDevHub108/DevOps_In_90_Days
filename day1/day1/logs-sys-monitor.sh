#!/bin/bash

#######################
# Author : nirajan Singh
# Date: 21-11-2025
#
# this script will have linux logs and system monitoring logs script
#
# version: v1
# ######################


echo "==============================="
echo "   LINUX LOGS & SYSTEM REPORT"
echo "==============================="

echo
echo ">>> 1. Listing /var/log (first 20 entries)"
echo "-------------------------------------------"
ls -lha /var/log | head -n 20

echo
echo ">>> 2. Last 10 lines of syslog"
echo "-------------------------------------------"

sudo tail -n 10 /var/log/syslog

echo
echo ">>> 3. Last accepted SSH logins"
echo "-------------------------------------------"
sudo grep "Accepted" /var/log/auth.log | tail -n 5

echo
echo ">>> 4. Last failed SSH logins "
echo "-------------------------------------------"
sudo grep "Failed" /var/log/auth.log | tail -n 5

echo
echo ">>> 5. Kernel messages (last 20)"
echo "-------------------------------------------"
dmesg | tail -n 20

echo 
echo ">>> 6. Memory usage"
echo "---------------------------------------------"
free -h

echo
echo ">>> 7. CPU load time"
echo "-------------------------------------------"
uptime

echo
echo ">>> 8. disk usage"
echo "-------------------------------------------"
df -h

echo
echo ">>> 9. Top 5 memory consuming  process"
echo "-------------------------------------------"
ps aux --sort=-%mem | head -n 5

echo
echo "==============================="
echo "   END OF SYSTEM REPORT"
echo "==============================="













