#!/bin/bash

echo 'Delteting dotfiles .config .bashrc .zshrc .xinitrc' | lolcat
sudo rm -rf $HOME/dotfiles
sudo rm -rf $HOME/.config
sudo rm -rf $HOME/.bashrc
sudo rm -rf $HOME/.zshrc
sudo rm -rf $HOME/.xinitrc
echo

echo 'Cloning dotfiles and replacing .config .bashrc .xinitrc' | lolcat
sudo git clone https://github.com/maisl0l//dotfiles | lolcat
sudo cp -r $HOME/dotfiles/.config $HOME/.config
sudo cp -r $HOME/dotfiles/.bashrc $HOME/.bashrc
sudo cp -r $HOME/dotfiles/.xinitrc $HOME/.xinitrc
echo

echo 'Neofetch test' | lolcat
neofetch
sudo cp -r $HOME/dotfiles/test/config.conf $HOME/.config/neofetch/config.conf
sudo cp -r $HOME/dotfiles/test/ascii $HOME/.config/neofetch/logo
neofetch
echo 
echo 'Done :)' | lolcat
echo
