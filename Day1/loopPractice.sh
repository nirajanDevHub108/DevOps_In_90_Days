#!/bin/bash

# Check if nginx service exists
if ! brew list nginx >/dev/null 2>&1 ; then
    echo "nginx is not installed. Installing now..."
    brew install nginx
fi

# Check if nginx is running
if brew services list | grep -q "nginx.*started"; then
    echo "nginx is already up and running"
    exit 0
else
    echo "nginx is not running"
    echo "starting it now ...."
    brew services start nginx
    sleep 10
fi

# Verify again
if brew services list | grep -q "nginx.*started"; then
    echo "nginx is now running"
else
    echo "nginx did not enter running state"
fi
