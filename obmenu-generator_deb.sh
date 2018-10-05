#!/bin/bash

## script to install obmenu-generator in ubuntu or debian

white='\033[01;37m'
nc='\033[0m'

echo -e "${white}This would install obmenu-generator.${nc}"
read -p "press any key to continue..."

sudo apt install build-essential cpanminus git libgtk2-perl -y
mkdir -p /tmp/obmenu-generator
git clone git://github.com/trizen/obmenu-generator /tmp/obmenu-generator/
sudo cp /tmp/obmenu-generator/obmenu-generator /usr/bin/
#
#check if directory named 'obmenu-generator' exists in ~/.config exists. if it don't, then create it and copy schema.pl else check schema.pl exists in there and copy it if needed.
if [ ! -d ${HOME}/.config/obmenu-generator/ ]; then
    mkdir -p ${HOME}/.config/obmenu-generator
    cp /tmp/obmenu-generator/schema.pl ${HOME}/.config/obmenu-generator/
else
    if [ ! -f ${HOME}/.config/obmenu-generator/schema.pl ]; then
        cp /tmp/obmenu-generator/schema.pl ${HOME}/.config/obmenu-generator/
    fi
fi
#
sudo cpanm Linux::DesktopFiles
sudo cpanm Data::Dump
sudo chmod 777 /usr/bin/obmenu-generator
rm -rf /tmp/obmenu-generator

echo -e "${white}###################################"
echo -e "Obmenu-generator is now installed!!"
echo -e "###################################${nc}"