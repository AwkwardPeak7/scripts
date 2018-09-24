#!/bin/bash

## script to install google chrome in ubuntu/debian

white='\033[1;37m'
nc='\033[0m'

echo -e "${white}Install Google Chrome in Deb distros.${nc}"
read -p "press any key to continue..."

if ! [ -x "$(command -v wget)" ]; then
	sudo apt install wget -y
fi

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb /tmp/google-chrome.deb
sudo apt install -f -y /tmp/google-chrome.deb
