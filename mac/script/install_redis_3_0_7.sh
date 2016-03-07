#!/bin/bash 

# daemon 启动
# vi /usr/local/redis-3.0.7/redis.conf
# daemonize yes

source config.sh 
cd $SRC
tar -zvxf redis-3.0.7.tar.gz
sudo cp -r redis-3.0.7 $LIB
cd "$LIB/redis-3.0.7"
sudo make install
