#!/bin/bash 

source config.sh 
cd $SRC
tar -zvxf redis-2.4.13.tar.gz
sudo cp -r redis-2.4.13 $LIB
cd "$LIB/redis-2.4.13"
sudo make install
