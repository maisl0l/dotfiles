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
	#Remove dotfiles .bashrc .zshrc .xinitrc .config/
  	sudo rm -rf $HOME/dotfiles
	sudo rm -rf $HOME/.bashrc
	sudo rm -rf $HOME/.zshrc
	sudo rm -rf $HOME/.xinitrc
	sudo rm -rf $HOME/.config
echo ''
	#Clone dotfiles.git reaplace .bashrc .xinitrc .config/
  	sudo git clone https://github.com/maisl0l//dotfiles | lolcat
	sudo cp -r $HOME/dotfiles/.bashrc $HOME/.bashrc
	sudo cp -r $HOME/dotfiles/.xinitrc $HOME/.xinitrc
	sudo cp -r $HOME/dotfiles/.config $HOME/.config
	sudo chmod +x $HOME/.config/polybar/launch.sh
echo ''

echo 'Neofetch test' | lolcat
sudo cp -r $HOME/dotfiles/test/config.conf $HOME/.config/neofetch/config.conf
sudo cp -r $HOME/dotfiles/test/ascii $HOME/.config/neofetch/logo
echo ''

clear
neofetch | lolcat
df -h | lolcat

echo ''
echo 'Done :)' | lolcat
echo ''
