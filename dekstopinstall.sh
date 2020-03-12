#!/bin/bash
echo "welcome to my script, please choose wich dekstop you want to install, you can choose between: 1) gnome, 2) plasma, 3) budgie 4) bspwm 5) budgie 6) cinnamon"
read dekstop


if ($dekstop = 1 || $dekstop = gnome || dekstop = 1 gnome){
git clone https://github.com/arcolinuxd/arco-gnome
cd arco-gnome
./bash gnome
}

else if ($dekstop = 2 || $dekstop = plasma || $dekstop = 2 plasma){
git clone https://github.com/arcolinuxd/arco-plasma
cd arco-plasma
}

else if ($dekstop = 3 || $dekstop = awasome || $dekstop = 3 awasome){
git clone https://github.com/arcolinuxd/arco-awasome
cd arco-awasome
}

else if ($dekstop = 4 || $dekstop = bspwm || $dekstop = 4 bspwm){
git clone https://github.com/arcolinuxd/arco-bspwm
cd arco-bspwm
}

else if ($dekstop = 5 || $dekstop = budgie || $dekstop = 5 bugie){
git clone https://github.com/arcolinuxd/arco-budgie
cd arco-budgie
}

else if ($dekstop = 7 || $dekstop = cinnamon || $dekstop = 6 cinnamon){
git clone https://github.com/arcolinuxd/arco-awasome
cd arco-plasma
}
