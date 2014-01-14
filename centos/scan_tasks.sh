#!/bin/bash 

source /usr/local/rvm/environments/ruby-1.9.2-p180

cd /usr/local/system/www/project_manager


RAILS_ENV=production rake pm:scan_tasks 
