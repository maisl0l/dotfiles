#!/bin/bash

sudo pacman -Sy neofetch vim pcmanfm alacritty git zsh polybar picom nitrogen gimp libreoffice firefox i3-gaps rofi flameshot jp2a 

git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si
cd 
sudo rm -r yay
yay --save --answerclean NONE --answerdiff NONE
yay -S ly-git pipes
sudo systemctl enable ly.service

sudo mv ly /etc/
sudo mv picom.conf /etc/xdg/picom.conf
sudo mv i3 $HOME/.config/
sudo mv polybar $HOME/.config/
sudo mv rofi $HOME/.config/
sudo mv wallpaper.png $HOME/Pictures/
nitrogen $HOME/Pictures/wallpaper.jpg
