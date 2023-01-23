#!/bin/bash
    #Install pacman packages
    sudo pacman -Sy --noconfirm grep curl fzf sed awk qemu fish flameshot thunderbird feh qrencode doge man iwd figlet cowsay cmatrix asciiquarium mpd bat cargo ranger ffmpeg mpv discord xclip libqalculate iftop htop aspell scrot dunst android-file-transfer brightnessctl slock network-manager-applet cbatticon volumeicon hacksaw shotgun tesseract firefox kitty picom polybar i3-gaps neofetch vim lolcat nitrogen openssh openvpn rofi gimp zsh spotifyd libreoffice
    
    # xdg-user-dirs pipewire pipewire-alsa pipewire-jack pipewire-pulse qjackctl toilet ohmyzsh hollywood
    
    #Install yay
    #mkdir /tmp/yay
    cd /tmp/yay
    curl -OJ 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=yay'
    makepkg -si --noconfirm
    cd
    rm -rf /tmp/yay
    yay --version
    
    #yay: spotify-tui bash-pipes doomretro gotop ngrok pipes.sh spacefm bullshit thefuck tty-clock 
    
    #git: jerry ly 
