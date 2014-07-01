#!/bin/bash
source config.sh

# lib 
sudo yum install libssl-dev gcc libpcre3-dev zlib1g-dev libperl-dev

cd $SRC
tar -zvxf pcre-7.9.tar.gz
tar -zvxf nginx-1.0.10.tar.gz
cd nginx-1.0.10
./configure \
--with-http_gzip_static_module \
--with-http_ssl_module \
--with-pcre=$SRC/pcre-7.9

make
sudo make install
