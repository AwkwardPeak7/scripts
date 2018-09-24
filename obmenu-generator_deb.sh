#!/bin/bash

## script to install obmenu-generator in ubuntu or debian

white='\033[01;37m'
nc='\033[0m'

echo -e "${white}This would install obmenu-generator.${nc}"
read -p "press any key to continue..."

sudo apt install build-essential cpanminus git -y
mkdir -p /tmp/obmenu-generator
git clone git://github.com/trizen/obmenu-generator /tmp/obmenu-generator/
sudo cp /tmp/obmenu-generator/obmenu-generator /usr/bin/
mkdir -p ${HOME}/.config/obmenu-generator
cp /tmp/obmenu-generator/schema.pl ${HOME}/.config/obmenu-generator/
sudo cpanm Linux::DesktopFiles
sudo cpanm Data::Dump
sudo chmod 777 /usr/bin/obmenu-generator
rm -rf /tmp/obmenu-generator
