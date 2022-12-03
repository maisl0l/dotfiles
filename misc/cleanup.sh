#!/bin/bash

    #Sync pacman database
    sudo pacman -Syy

    #Clean pacman cache
    sudo pacman -Scc --noconfirm

    #Remove unused packages
    sudo pacman -Rns $(pacman -Qtdq) --noconfirm

    #Delete cache directory
    sudo rm -rf ~/.cache*

    #Clear terminal & list filesystem
    clear
    df -h | lolcat
