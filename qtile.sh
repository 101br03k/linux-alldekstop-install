#!/bin/sh -x
echo what is your username
read username

mirror
yes | update
yes | sudo mirror 
#answers yes to proceed with update
upall

echo"
#################################
## installation proces started ##
#################################
"

git clone https://github.com/arcolinuxd/arco-qtile 2>> qtiledebug.txt
cd arco-qtile

sudo ./100-display-manager-and-desktop.sh 2>> qtiledebug.txt
sudo ./110-development-software.sh 2>> qtiledebug.txt
sudo ./120-install-sound.sh 2>> qtiledebug.txt
sudo ./130-bluetooth.sh 2>> qtiledebug.txt
sudo ./140-printers.sh 2>> qtiledebug.txt
yes $password | yes $password | yes $username | ./150-samba.sh 2>> qtiledebug.txt
sudo ./160-laptop.sh 2>> qtiledebug.txt
sudo ./170-network-discovery.sh 2>> qtiledebug.txt
sudo ./200-software-arch-linux.sh 2>> qtiledebug.txt
sudo ./300-software-arcolinux-3thparty.sh 2>> qtiledebug.txt
sudo ./400-software-arcolinux-xlarge.sh 2>> qtiledebug.txt
sudo ./500-software-distro-specific.sh 2>> qtiledebug.txt
sudo ./600-additional-arcolinux-software.sh 2>> qtiledebug.txt
sudo .700-installing-fonts.sh 2>> qtiledebug.txt
sudo ./800-conky.sh 2>> qtiledebug.txt
#runs all the codes you need and puts the terminal answer in a file per code

echo "
########################
## thx for installing ##
########################
"

sudo reboot
#reboots the system
