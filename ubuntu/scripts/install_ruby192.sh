#!/bin/sh 

source ~/.rvm/scripts/rvm

sudo /usr/bin/apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion

~/.rvm/bin/rvm install 1.9.2
~/.rvm/bin/rvm use 1.9.2
~/.rvm/bin/rvm --default use 1.9.2
