#!/bin/bash
    #Install pacman packages
    sudo pacman -Sy --noconfirm firefox kitty picom polybar i3-gaps neofetch vim lolcat nitrogen openssh openvpn rofi pipewire pipewire-alsa pipewire-jack pipewire-pulse zsh spotifyd
        
    #Install yay
    mkdir /tmp/yay
    cd /tmp/yay
    curl -OJ 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=yay'
    makepkg -si --noconfirm
    cd
    rm -rf /tmp/yay
    yay --version
