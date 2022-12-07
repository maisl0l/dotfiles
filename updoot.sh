#!/bin/bash
    #Backup package list
    sudo pacman -Qqen > $HOME/dotfiles/misc/pacman-backup.txt

    #Sync pacman database
    sudo pacman -Syy

    #Clean pacman cache
    sudo pacman -Scc --noconfirm

    #Remove unused packages
    sudo pacman -Rns $(pacman -Qtdq) --noconfirm

    #Delete cache directory
    sudo rm -rf ~/.cache*

    #Remove dotfiles/ .bashrc .zshrc .xinitrc .config/ from $HOME
    sudo rm -rf $HOME/dotfiles
    sudo rm -rf $HOME/.bashrc
    sudo rm -rf $HOME/.zshrc
    sudo rm -rf $HOME/.xinitrc
    sudo rm -rf $HOME/.config

    #Clone dotfiles.git & copy .bashrc .zshrc .xinitrc .config/ to $HOME
    git clone https://github.com/maisl0l/dotfiles
    cp -r $HOME/dotfiles/.config/.bashrc $HOME/.bashrc
    cp -r $HOME/dotfiles/.config/.zshrc $HOME/.zshrc
    cp -r $HOME/dotfiles/.config/.xinitrc $HOME/.xinitrc
    cp -r $HOME/dotfiles/.config $HOME/.config

    #Chmod polybar/launch.sh
    sudo chmod +x $HOME/.config/polybar/launch.sh
        
    #Set Wallpaper 
    sudo mkdir /home/Pictures/
    sudo cp -r $HOME/dotfiles/misc/wallpaper.jpg /home/Pictures/wallpaper.jpg
    
    #Clear terminal neofetch list-filesystem & done
    clear
    neofetch | lolcat
    df -h | lolcat
    echo ''
