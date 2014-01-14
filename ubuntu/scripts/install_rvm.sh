#!/bin/sh
sudo apt-get install curl

curl -L get.rvm.io | bash -s stable
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc   
  
. ~/.bashrc  
