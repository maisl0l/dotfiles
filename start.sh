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

sudo chmod +x $HOME/dotfiles/polybar/launch.sh
sudo mv $HOME/dotfiles/ly /etc/
sudo mv $HOME/dotfiles/picom.conf /etc/xdg/picom.conf
sudo mv $HOME/dotfiles/i3 $HOME/.config/
sudo mv $HOME/dotfiles/polybar $HOME/.config/
sudo mv $HOME/dotfiles/rofi $HOME/.config/
sudo mv $HOME/dotfiles/wallpaper.png $HOME/Pictures/wallpaper.jpg
nitrogen $HOME/Pictures/wallpaper.jpg
