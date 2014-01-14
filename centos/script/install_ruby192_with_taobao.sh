#!/bin/bash
# http://ruby-china.org/wiki/install_ruby_guide

sed -i 's!ftp.ruby-lang.org/pub/ruby!ruby.taobao.org/mirrors/ruby!' $rvm_path/config/db

rvm pkg install readline

rvm install 1.9.2
