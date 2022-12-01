#!/bin/bash

echo ''
echo "test y/n ?" | lolcat
read -p "[y/n] ? " yn
if $yn in 
  y ) echo yes;;
  n ) echo no;
  * )
fi
echo ''

echo 'Do pacman cleanup ?' | lolcat
read -p "[y/n] ? " yn
case $yn in
  y ) echo yes
  	#Sync pacman database
	sudo pacman -Syy

	#Clean pacman cache
	sudo pacman -Scc --noconfirm

	#Remove unused packages
	sudo pacman -Rns $(pacman -Qtdq) --noconfirm

	#Delete cache directory
	sudo rm -rf ~/.cache*

	#Clear terminal & list filesystem
	clear && df -h | lolcat;;
  n ) echo no2;
  * )
esac
echo ''

echo 'Delete dotfiles .config .bashrc .zshrc .xinitrc ?' | lolcat
read -p "[y/n] ? " yn
case $yn in 
  y ) 
  	sudo rm -rf $HOME/dotfiles
	sudo rm -rf $HOME/.bashrc
	sudo rm -rf $HOME/.zshrc
	sudo rm -rf $HOME/.xinitrc
	sudo rm -rf $HOME/.config;;
  n ) echo no3
  * )
esac
echo ''

echo 'Replace .config .bashrc .xinitrc ?' | lolcat
read -p "[y/n] ? " yn
case $yn in 
  y )
  	sudo git clone https://github.com/maisl0l//dotfiles | lolcat
	sudo cp -r $HOME/dotfiles/.bashrc $HOME/.bashrc
	sudo cp -r $HOME/dotfiles/.xinitrc $HOME/.xinitrc
	sudo cp -r $HOME/dotfiles/.config $HOME/.config;;
  n )
  * )
esac
echo ''

echo 'Neofetch test' | lolcat
neofetch
sudo cp -r $HOME/dotfiles/test/config.conf $HOME/.config/neofetch/config.conf
sudo cp -r $HOME/dotfiles/test/ascii $HOME/.config/neofetch/logo
echo ''
clear
neofetch | lolcat
df -h | lolcat
echo ''

#echo 'Placeholder' | lolcat
#read -p "[y/n] ?" choice
#case "$choice" in 
#  y|Y|yes|Yes ) ;;
#  n|N|no|No )
#  echo placeholder
#  * ) ;;
#esac
#echo ''

echo 'Done :)'
