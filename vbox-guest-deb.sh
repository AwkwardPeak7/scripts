#!/bin/bash

## this script installs virtualbox guest utils on ubuntu and debian

white='\033[1;37m'
nc='033[0m'

echo -e "${white}Do you want to install virtualbox guest additions?${nc}"
read -p "press any key to continue or press CTRL+c to cancel."

sudo apt-get update
sudo apt-get install virtualbox-guest-dkms virtualbox-guest-x11 virtualbox-guest-utils -y

