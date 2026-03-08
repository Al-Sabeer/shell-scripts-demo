#!/bin/bash


<<info
This shell scrips will instal the package 
that you install in the arguments.

eg. ./install_package.sh nginx
	./install_package.sh docker.io
	./install_package.sh unzip
info

echo "Installing $1"

sudo apt-get update 
sudo apt-get install $1 -y

echo "installation complted"


