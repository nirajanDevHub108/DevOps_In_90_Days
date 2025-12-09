#!/bin/bash

if systemctl status nginx 1>/dev/null 2>&1 ; then
	echo "nginx is already uo and running"
	exit 0
else 
	echo "nginx is not running"
	echo "starting it now ...."
	systemctl start nginx

	sleep 30
	if systemctl status nginx 1>/dev/null  ; then
		echo "nginx is now running"
	else
		echo " nginx is not entered into running state"
	fi

fi

