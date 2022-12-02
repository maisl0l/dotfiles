#!/bin/bash
    #archinstall
    archinstall --config /home/dotfiles/archinstall/user_configuration.json --disk_layouts /home/dotfiles/archinstall/user_disk_layout.json --creds /home/dotfiles/archinstall/user_credentials.json

    #Backup package list
        sudo pacman -Qqen > pacman-backup.txt

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
        sudo git clone https://github.com/maisl0l//dotfiles
        sudo cp -r $HOME/dotfiles/.bashrc $HOME/.bashrc
        sudo cp -r $HOME/dotfiles/.zshrc $HOME/.zshrc
        sudo cp -r $HOME/dotfiles/.xinitrc $HOME/.xinitrc
        sudo cp -r $HOME/dotfiles/.config $HOME/.config

    #Chmod polybar/launch.sh
        sudo chmod +x $HOME/.config/polybar/launch.sh
        
    #Set Wallpaper
        sudo mkdir /home/Pictures/
        sudo cp -r $HOME/dotfiles/wallpaper.jpg /home/Pictures/wallpaper.jpg
    
    #Install pacman packages
        sudo pacman -Sy --noconfirm firefox kitty picom polybar i3-gaps neofetch vim lolcat nitrogen openssh openvpn rofi pipewire pipewire-alsa pipewire-jack pipewire-pulse zsh gimp libreoffice spotifyd
        clear
        neofetch | lolcat
        echo ''
        echo ' done :)'
        echo ''
