#!/bin/sh
sudo apt-get update 
sudo apt-get install -yqq locales lsb-release software-properties-common ansible wget
sudo apt-get clean  
LANGUAGE=en_US.UTF-8
LANG=en_US.UTF-8
sudo localedef -i en_US -f UTF-8 en_US.UTF-8 
sudo /usr/sbin/update-locale LANG=$LANG
wget https://raw.githubusercontent.com/ajeygore/ubuntu-workstation/main/ubuntu.yml
sudo ansible-playbook ubuntu.yml
sh -c "`curl -fsSL https://raw.githubusercontent.com/ajeygore/dotfiles/master/install.sh `"
