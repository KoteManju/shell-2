#!/usr/bin/env bash

source config.sh
cd $SRC
tar -zvxf git-1.6.1.tar.gz
cd git-1.6.1
./configure --prefix=/usr/local
make
sudo make install
sudo cp `which git` /usr/bin/

