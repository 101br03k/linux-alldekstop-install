#!/bin/sh -x
echo "what is your username"
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

git clone https://github.com/arcolinuxd/arco-gnome 2>> gnomedebug.txt
cd arco-gnome

sudo ./000-use-all-cores-makepkg-conf-v4.sh 2>> gnomedebug.txt
sudo ./100-display-manager-and-desktop-v1.sh 2>> gnomedebug.txt
sudo ./110-install-sound-v3.sh 2>> gnomedebug.txt
sudo ./120-bluetooth-v2.sh 2>> gnomedebug.txt
sudo ./121-fix-bluetooth-switch-not-working-v1.sh 2>> gnomedebug.txt
sudo ./130-install-printers-v3.sh 2>> gnomedebug.txt
yes $password | yes $password | yes $username | ./140-install-samba-v3.sh 2>> gnomedebug.txt
sudo ./150-install-network-discovery-v4.sh 2>> gnomedebug.txt
sudo ./160-install-tlp-for-laptops-v1.sh 2>> gnomedebug.txt
sudo ./200-software-arch-linux-repo-v2.sh 2>> gnomedebug.txt
sudo ./300-software-AUR-repo-v1.sh 2>> gnomedebug.txt
sudo ./400-software-arch-linux-repo-distro-specific-v1.sh 2>> gnomedebug.txt
sudo ./500-software-AUR-repo-distro-specific-v1.sh 2>> gnomedebug.txt
sudo ./600-software-from-ArcoLinux-repo-v1.sh 2>> gnomedebug.txt
sudo ./700-installing-fonts-v2.sh 2>> gnomedebug.txt
sudo ./800-autologin-v3.sh 2>> gnomedebug.txt
sudo ./900-fix-microcode-error-v1.sh 2>> gnomedebug.txt
sudo ./910-fix-mouse-cursor-breeze-snow-v1.sh 2>> gnomedebug.txt
#runs all the codes you need and puts the terminal answer in a file per code

echo "
########################
## thx for installing ##
########################
"

sudo reboot
#reboots the system
