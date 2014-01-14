#!/bin/bash

source config.sh

# lib 
sudo apt-get install libssl-dev gcc libpcre3-dev zlib1g-dev libperl-dev

cd $SRC
tar -zvxf pcre-7.9.tar.gz
tar -zvxf nginx-1.0.10.tar.gz
tar -zvxf nginx_upload_module-2.0.12.tar.gz
# nginxps, nginx_upload_progress 注意要在entsea branch
cd nginx-1.0.10
./configure \
--add-module=$SRC/nginx_upload_module-2.0.12 \
--add-module=$WORKSPACE/projects/nginxps \
--add-module=$WORKSPACE/projects/nginx_upload_progress \
--with-http_gzip_static_module \
--with-http_ssl_module \
--with-pcre=$SRC/pcre-7.9


make
sudo make install

cd /usr/local/nginx/conf/
# sudo mv nginx.conf nginx.conf.old
# sudo cp $SRC/nginx.conf .

