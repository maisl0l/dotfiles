#!/bin/bash
    #Install pacman packages
    sudo pacman -Sy --noconfirm lmms obs-studio steam ttf-dejavu nerd-fonts noto-fonts-emoji noto-fonts-cjk noto-fonts thefuck  python-pip grep curl fzf sed awk qemu fish flameshot thunderbird feh qrencode doge man iwd figlet cowsay cmatrix asciiquarium mpd bat cargo ranger ffmpeg mpv discord xclip libqalculate iftop htop aspell scrot dunst android-file-transfer brightnessctl slock network-manager-applet cbatticon volumeicon hacksaw shotgun tesseract firefox kitty picom polybar i3-gaps neofetch vim lolcat nitrogen openssh openvpn rofi gimp zsh spotifyd libreoffice
    
    # xdg-user-dirs ohmyzsh hollywood
    
    #Install yay
    mkdir /tmp/yay
    cd /tmp/yay
    curl -OJ 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=yay'
    makepkg -si --noconfirm
    cd
    rm -rf /tmp/yay
    yay --version
    
    #Install yay packages
    yay -S cava ani-cli-git ly spotify-tui doomretro gotop ngrok spacefm bullshit spotify vscodium remotemouse toilet discord-screenaudio betterdiscord-installer 
    
    #git: jerry
    
    #pip: mov-cli shell-gpt 