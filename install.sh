#!/bin/bash

#init
sudo apt-get update -yqqu

#    - archives
sudo apt-get install -yqqu unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller

#    - ack
sudo apt-get install -yqqu ack-grep

#    - curl
sudo apt-get install -yqqu curl 

#    - git
sudo apt-get install -yqqu git

#    - zsh
sudo apt-get install -yqqu zsh
curl -L http://install.ohmyz.sh | sh
sh -s /bin/zsh
git clone https://github.com/markus-wi/zshconfig.git ~/.zshconfig
chmod +x ~/.zshconfig/install.sh
~/.zshconfig/install.sh

#    - vim
git clone https://github.com/markus-wi/vimconfig.git ~/.vimconfig
chmod +x ~/.vimconfig/install-vim.sh
chmod +x ~/.vimconfig/install.sh
~/.vimconfig/install-vim.sh
~/.vimconfig/install.sh

#    - tmux
sudo add-apt-repository -yu ppa:pi-rho/dev
sudo apt-get update -yqqu
sudo apt-get install -yqqu python-software-properties software-properties-common
sudo apt-get install -yqqu tmux-next

git clone https://github.com/markus-wi/tmuxconfig.git ~/.tmuxconfig
chmod +x ~/.tmuxconfig/install.sh
~/.tmuxconfig/install.sh

#    - gnome-terminal
sudo add-apt-repository -yqqu ppa:gnome3-team/gnome3-staging
sudo apt-get update -yqqu
sudo apt-get install -yqqu --reinstall gnome-terminal

#    - htop
sudo apt-get install -yqqu htop

#    - nodejs npm
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get update -yqqu
sudo apt-get install -yqqu nodejs
sudo npm install -g n
sudo n latest
sudo npm install -g npm

#    - java
sudo add-apt-repository -yqqu ppa:webupd8team/java
sudo apt-get update -yqqu
sudo apt-get install -yqqu oracle-java8-installer
sudo apt-get install -yqqu oracle-java8-set-default


#    - gimp
sudo add-apt-repository -yqqu ppa:otto-kesselgulasch/gimp
sudo apt-get update -yqqu
sudo apt-get install -yqqu gimp

#    - nginx
sudo apt-get install -yqqu nginx 

#   - patched fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
