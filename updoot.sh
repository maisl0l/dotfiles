#!/bin/bash

  	#Sync pacman database
	sudo pacman -Syy

	#Clean pacman cache
	sudo pacman -Scc --noconfirm

	#Remove unused packages
	sudo pacman -Rns $(pacman -Qtdq) --noconfirm

	#Delete cache directory
	sudo rm -rf ~/.cache*
echo ''

  	sudo rm -rf $HOME/dotfiles
	sudo rm -rf $HOME/.bashrc
	sudo rm -rf $HOME/.zshrc
	sudo rm -rf $HOME/.xinitrc
	sudo rm -rf $HOME/.config
echo ''

  	sudo git clone https://github.com/maisl0l//dotfiles | lolcat
	sudo cp -r $HOME/dotfiles/.bashrc $HOME/.bashrc
	sudo cp -r $HOME/dotfiles/.xinitrc $HOME/.xinitrc
	sudo cp -r $HOME/dotfiles/.config $HOME/.config
echo ''

echo 'Neofetch test' | lolcat
sudo cp -r $HOME/dotfiles/test/config.conf $HOME/.config/neofetch/config.conf
sudo cp -r $HOME/dotfiles/test/ascii $HOME/.config/neofetch/logo
echo ''

clear
neofetch | lolcat
df -h | lolcat

#echo 'Placeholder' | lolcat
#read -p "[y/n] ?" choice
#case "$choice" in 
#  y|Y|yes|Yes ) ;;
#  n|N|no|No )
#  echo placeholder
#  * ) ;;
#esac
#echo ''

#bin bash

#read -p "Test !? " yn
#case "$yn" in
#	y|Y ) 
#		echo yes;;
#	n|N ) 
#		echo no;;
#	* ) ;;
#esac

#read -p "Test !? " yn
#case "$yn" in
#	y|Y ) 
#		echo yes;;
#	n|N ) 
#		echo no;;
#	* ) ;;
#esac
echo ''
echo 'Done :)' | lolcat
echo ''
