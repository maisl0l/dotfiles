#!/bin/bash
    #Install pacman packages
    sudo pacman -Sy --noconfirm man iwd figlet cowsay cmatrix asciiquarium mpd bat cargo ranger ffmpeg mpv discord xclip libqalculate iftop htop aspell scrot dunst android-file-transfer brightnessctl ardour slock pcmanfm network-manager-applet cbatticon volumeicon hacksaw shotgun tesseract firefox kitty picom polybar i3-gaps neofetch vim lolcat nitrogen openssh openvpn rofi gimp zsh spotifyd libreoffice
    
    # xdg-user-dirs pipewire pipewire-alsa pipewire-jack pipewire-pulse qjackctl toilet ohmyzsh bullshit fuck tty-clock hollywood
    
    #Install yay
    #mkdir /tmp/yay
    cd /tmp/yay
    curl -OJ 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=yay'
    makepkg -si --noconfirm
    cd
    rm -rf /tmp/yay
    yay --version
