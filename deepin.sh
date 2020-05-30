#!/bin/sh -x
echo "what is your username"
read username

mirror
yes | update
yes | sudo mirror 
#answers yes to proceed with update
upall

echo -e "\e[1;32m 
#################################
## installation proces started ##
################################# 
\e[0m"



git clone https://github.com/arcolinuxd/arco-deepin 2>> deepindebug.txt
cd arco-deepin

sudo ./100-display-manager-and-desktop.sh 2>> deepindebug.txt
sudo ./110-development-software.sh 2>> deepindebug.txt
sudo ./120-install-sound.sh 2>> deepindebug.txt
sudo ./130-bluetooth.sh 2>> deepindebug.txt
sudo ./140-printers.sh 2>> deepindebug.txt
yes $password | yes $password | yes $username | 150-samba.sh 2>> deepindebug.txt
sudo ./160-laptop.sh 2>> deepindebug.txt
sudo ./170-network-discovery.sh 2>> deepindebug.txt
sudo ./200-software-arch-linux.sh 2>> deepindebug.txt
sudo ./300-software-arcolinux-3thparty.sh 2>> deepindebug.txt
sudo ./400-software-arcolinux-xlarge.sh 2>> deepindebug.txt
sudo ./500-software-distro-specific.sh 2>> deepindebug.txt
sudo ./600-additional-arcolinux-software.sh 2>> deepindebug.txt
sudo ./700-installing-fonts.sh 2>> deepindebug.txt
sudo ./800-conky.sh 2>> deepindebug.txt
#runs all the codes you need and puts the terminal answer in a file per code

echo -e "\e[1;32m 
########################
## thx for installing ##
########################
\e[0m"

sudo reboot
#reboots the system
