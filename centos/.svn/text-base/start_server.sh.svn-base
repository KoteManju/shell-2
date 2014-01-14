#!/bin/sh

rvm use 1.8.7

/etc/init.d/mysqld start   # start mysql
/usr/local/system/nginx/sbin/nginx  # start nginx
thin start -C /etc/thin/thin.yml # start wxianfeng_com thin
/etc/init.d/httpd start # start apache

/etc/init.d/postfix start  # start postfix
/etc/init.d/dovecot start # start dovecot
/etc/init.d/saslauthd start # start saslauthd

cd /usr/local/system/www/short_url/lib 
nohup ruby mongoshort.rb -e production & # start url.wxianfeng.com

cd /usr/local/system
nohup mongodb/bin/mongod --dbpath=/usr/local/system/mongodb/data/ &  # start mongodb

cd /usr/local/system
svnserve -d -r vcs # start svn server

cd /usr/local/system/www/refinery_cms
thin start -d -p 4000 -e production # start www.benchuang.net thin
