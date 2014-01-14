#!/bin/bash

echo insecure >> ~/.curlrc

curl -L  https://get.rvm.io | bash -s stable
