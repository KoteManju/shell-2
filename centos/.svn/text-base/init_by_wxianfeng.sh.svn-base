#!/bin/bash

source /usr/local/rvm/environments/ruby-1.9.2-p180

# huianxinao.com
cd /usr/local/system/www/project_manager
thin start -C /etc/thin/project_manager_thin.yml

# wxianfeng.com
source /usr/local/rvm/environments/ruby-1.8.7-p334 
thin start -C /etc/thin/thin.yml

# mongodb
nohup mongod --dbpath=/usr/local/system/mongodb/data >> /usr/local/system/logs/nohup.log 2>&1 &

# url.wxianfeng.com
cd /usr/local/system/www/short_url/lib
nohup ruby mongoshort.rb -e production >> /usr/local/system/logs/nohup.log 2>&1 &

# redmine.wxianfeng.com
cd /usr/local/system/www/redmine
thin start -e production -p 6000 -d
