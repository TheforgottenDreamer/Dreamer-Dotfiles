#!/bin/sh

polybar_user= '[user]
battery =
adapter =
backlight ='

git pull

if [ -e ./.config/polybar/user.ini ]; then
  echo "Polybar user file exists."
else
  touch ./.config/polybar/user.ini
  echo $polybar_user >> ./.config/polybar/user.ini 
fi

stow .
