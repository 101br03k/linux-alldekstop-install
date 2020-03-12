#!/bin/bash
echo "welcome to my script, please choose wich dekstop you want to install, you can choose between: 1) gnome, 2) plasma, 3) budgie 4) bspwm 5) budgie 6) cinnamon"
echo "please type the name of the number of the dekstop you want to install"
read dekstop

if ($dekstop = 1 | $dekstop = gnome | $dekstop = 1 gnome)
{sudo bash gnome.sh}
else if ($dekstop = 2 | $dekstop = plasma | $dekstop = 2 plasma)
{sudo bash gnome.sh}
else if ($dekstop = 3 | $dekstop = budgie | $dekstop = 3 budgie)
{sudo bash gnome.sh}
else if ($dekstop = 4 | $dekstop = bspwm | $dekstop = 4 bspwm)
{sudo bash gnome.sh}
