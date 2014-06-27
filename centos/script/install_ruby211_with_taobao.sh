#!/bin/bash
# http://ruby-china.org/wiki/install_ruby_guide

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc
source ~/.bashrc

rvm pkg install readline libyaml

sudo yum install -b current libyaml-devel libyaml

sed -i 's!ftp.ruby-lang.org/pub/ruby!ruby.taobao.org/mirrors/ruby!' $rvm_path/config/db


rvm install 2.1.1 

# rvm reinstall ruby-2.1.1

gem sources --remove https://rubygems.org/

gem sources -a https://ruby.taobao.org/
