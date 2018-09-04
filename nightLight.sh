#!/bin/bash

read -p 'Enter action for night light [on/off]: ' input

if [ $input == "on" ];
then
	dconf write /org/gnome/settings-daemon/plugins/color/night-light-enabled true

elif [ $input == "off" ];
then
	dconf write /org/gnome/settings-daemon/plugins/color/night-light-enabled false

else
	echo "Not a possible option"

fi
