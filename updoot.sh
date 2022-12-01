#!/bin/bash

echo "Do pacman cleanup ? " | lolcat
read -p "[y/n] ?" choice
case "$choice" in
  y|Y|yes|Yes ) ;;
  n|N|no|No )
	#Sync pacman database
	sudo pacman -Syy

	#Clean pacman cache
	sudo pacman -Scc --noconfirm

	#Remove unused packages
	sudo pacman -Rns $(pacman -Qtdq) --noconfirm

	#Delete cache directory
	sudo rm -rf ~/.cache*

	#Clear terminal & list filesystem
	clear
	df -h | lolcat
esac
echo

echo 'Delete dotfiles .config .bashrc .zshrc .xinitrc ?' | lolcat
read -p "[y/n] ? " choice
case "$choice" in 
  y|Y|yes|Yes ) ;;
  n|N|no|No ) 
	sudo rm -rf $HOME/dotfiles
	sudo rm -rf $HOME/.bashrc
	sudo rm -rf $HOME/.zshrc
	sudo rm -rf $HOME/.xinitrc
	sudo rm -rf $HOME/.config
esac
echo

echo 'Replace .config .bashrc .xinitrc ?' | lolcat
read -p "[y/n] ? " choice
case "$choice" in 
  y|Y|yes|Yes ) ;;
  n|N|no|No )
	sudo git clone https://github.com/maisl0l//dotfiles | lolcat
	sudo cp -r $HOME/dotfiles/.bashrc $HOME/.bashrc
	sudo cp -r $HOME/dotfiles/.xinitrc $HOME/.xinitrc
	sudo cp -r $HOME/dotfiles/.config $HOME/.config
esac
echo

echo 'Neofetch test' | lolcat
neofetch
sudo cp -r $HOME/dotfiles/test/config.conf $HOME/.config/neofetch/config.conf
sudo cp -r $HOME/dotfiles/test/ascii $HOME/.config/neofetch/logo
neofetch
echo
clear
echo
echo

#echo 'Placeholder' | lolcat
#read -p "[y/n] ?" choice
#case "$choice" in 
#  y|Y|yes|Yes ) ;;
#  n|N|no|No )
#  echo placeholder
#esac
#echo

echo 'Done :)'
