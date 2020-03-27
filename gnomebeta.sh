echo what is your username
read username

mirror
yes | update
yes $password | sudo mirror 
#answers yes to proceed with update / installation and automatic types in your password to proceed with instalation
upall

git clone https://github.com/arcolinuxd/arco-gnome 2> updatedebug.txt
cd arco-gnome

sudo ./000-use-all-cores-makepkg-conf-v4.sh 2> gnomedebug000.txt
sudo ./100-display-manager-and-desktop-v1.sh 2> gnomedebug100.txt
sudo ./110-install-sound-v3.sh 2> gnomedebug110.txt
sudo ./120-bluetooth-v2.sh 2> gnomedebug120.txt
sudo ./121-fix-bluetooth-switch-not-working-v1.sh 2> gnomedebug121.txt
sudo ./130-install-printers-v3.sh 2> gnomedebug130.txt
yes $password | yes $password | yes $username | ./140-install-samba-v3.sh 2> gnomedebug140.txt
sudo ./150-install-network-discovery-v4.sh 2> gnomedebug150.txt
sudo ./160-install-tlp-for-laptops-v1.sh 2> gnomedebug160.txt
sudo ./200-software-arch-linux-repo-v2.sh 2> gnomedebug200.txt
sudo ./300-software-AUR-repo-v1.sh 2> gnomedebug300.txt
sudo ./400-software-arch-linux-repo-distro-specific-v1.sh 2> gnomedebug400.txt
sudo ./500-software-AUR-repo-distro-specific-v1.sh 2> gnomedebug500.txt
sudo ./600-software-from-ArcoLinux-repo-v1.sh 2> gnomedebug600.txt
sudo ./700-installing-fonts-v2.sh 2> gnomedebug700.txt
sudo ./800-autologin-v3.sh 2> gnomedebug800.txt
sudo ./900-fix-microcode-error-v1.sh 2> gnomedebug900.txt
sudo ./910-fix-mouse-cursor-breeze-snow-v1.sh 2> gnomedebug910.txt
#runs all the codes you need and puts the terminal answer in a file per code

sudo reboot
#reboots the system
