#!/bin/bash
    #Install pacman packages
    sudo pacman -Sy --noconfirm ranger wireshark-qt xdg-user-dirs thunar aircrack-ng obs-studio steam ttf-dejavu nerd-fonts noto-fonts-emoji noto-fonts-cjk noto-fonts thefuck python-pip grep curl fzf sed awk qemu flameshot thunderbird feh qrencode doge man iwd figlet cowsay godot cmatrix asciiquarium bat cargo ffmpeg mpv discord xclip libqalculate iftop htop aspell dunst android-file-transfer brightnessctl slock network-manager-applet cbatticon volumeicon tesseract firefox kitty picom polybar i3-gaps neofetch vim lolcat nitrogen openssh openvpn rofi gimp zsh spotifyd libreoffice
    
    #  ohmyzsh hollywood wine wine-gecko wine-mono winetricks lutris 
    
    #Install yay
    mkdir /tmp/yay
    cd /tmp/yay
    curl -OJ 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=yay'
    makepkg -si --noconfirm
    cd
    rm -rf /tmp/yay
    yay --version
    
    #Install yay packages
    yay -S cava ani-cli-git ly spotify-tui doomretro gotop ngrok bullshit spotify heroic-games-launcher-bin vscodium remotemouse toilet discord-screenaudio betterdiscord-installer 
    
    #git: jerry proton-ge wine-ge
    
    #pip: mov-cli shell-gpt 
