#!/bin/bash

echo 'Delete dotfiles .config .bashrc .zshrc .xinitrc' | lolcat
read -p "[y/n] ?" choice
case "$choice" in 
  y|Y ) ;;
  n|N ) 
	echo ==============================;;
  * ) ;;
esac

sudo rm -rf $HOME/dotfiles
sudo rm -rf $HOME/.bashrc
sudo rm -rf $HOME/.zshrc
sudo rm -rf $HOME/.xinitrc
sudo rm -rf $HOME/.config
echo

echo 'Replacing .config .bashrc .xinitrc' | lolcat
sudo git clone https://github.com/maisl0l//dotfiles | lolcat
sudo cp -r $HOME/dotfiles/.bashrc $HOME/.bashrc
sudo cp -r $HOME/dotfiles/.xinitrc $HOME/.xinitrc
sudo cp -r $HOME/dotfiles/.config $HOME/.config
echo

echo 'Neofetch test' | lolcat
neofetch
sudo cp -r $HOME/dotfiles/test/config.conf $HOME/.config/neofetch/config.conf
sudo cp -r $HOME/dotfiles/test/ascii $HOME/.config/neofetch/logo
neofetch
echo 
echo 'Done :)' | lolcat
echo
