#!/bin/bash

echo 'Do pacman cleanup ?' | lolcat

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
echo ''

echo 'Delete dotfiles .config .bashrc .zshrc .xinitrc ?' | lolcat
  	sudo rm -rf $HOME/dotfiles
	sudo rm -rf $HOME/.bashrc
	sudo rm -rf $HOME/.zshrc
	sudo rm -rf $HOME/.xinitrc
	sudo rm -rf $HOME/.config;;
echo ''

echo 'Replace .config .bashrc .xinitrc ?' | lolcat
  	sudo git clone https://github.com/maisl0l//dotfiles | lolcat
	sudo cp -r $HOME/dotfiles/.bashrc $HOME/.bashrc
	sudo cp -r $HOME/dotfiles/.xinitrc $HOME/.xinitrc
	sudo cp -r $HOME/dotfiles/.config $HOME/.config;;
echo ''

echo 'Neofetch test' | lolcat
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

#!/bin/bash

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

echo 'Done :)'
