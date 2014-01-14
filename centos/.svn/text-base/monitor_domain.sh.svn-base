#!/bin/bash

# Query a supplied URL and output an error message if
# the status code was not 200. Can be used as a cron
# task to check if a server is up or not.

# Ben Dowling - http://www.coderholic.com
# See : http://www.coderholic.com/server-status-checker-shell-script-2/

# Usage : /.monitor_domain.sh wxianfeng.com

# The URL to query
if [ $# -ne 1 ] # -ne 不等于
then
	echo "Usage: $0 <URL>"; # $0 得到当前文件名
	exit;
fi

if ping -c 1 $1
then
	echo "server is running" 
else
	echo "$1 is down" | mail -s "$1 is down" wang.fl1429@gmail.com
        curl "http://sms.api.bz/fetion.php?username=15001108691&password=wxf19870104&sendto=15001108691&message=$1%20is%20down"
fi



response=$(curl -s -I -L $1 | grep HTTP); 

status=${response#* }; # Strip off characters up to the first space
status=${status:0:3}; # Just use the 3 digit status code

if [ "$status" != "200" ]
then
	echo "Error fetching $1. Status code $status" | mail -s "$1 response code is not 200" wang.fl1429@gmail.com;
        curl "http://sms.api.bz/fetion.php?username=15001108691&password=wxf19870104&sendto=15001108691&message=$1%20response%20status%20code%20$status"

fi
