#!/bin/bash

sudo rm -rf $HOME/dotfiles
sudo rm -rf $HOME/.config
sudo rm -rf $HOME/.bashrc
sudo rm -rf $HOME/.zshrc
sudo rm -rf $HOME/.xinitrc

sudo git clone https://github.com/maisl0l//dotfiles
sudo cp -r $HOME/dotfiles/.config $HOME/.config
sudo cp -r $HOME/dotfiles/.bashrc $HOME/.bashrc
sudo cp -r $HOME/dotfiles.xinitrc $HOME/.xinitrc

sudo cp -r $HOME/dotfiles/test/config.conf $HOME/.config/neofetch/config.conf
sudo cp -r $HOME/dotfiles/test/ascii $HOME/.config/neofetch/logo
echo 
echo 'done :)'
