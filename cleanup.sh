#!/bin/bash

df -h
sudo pacman -Syy
sudo pacman -Scc --noconfirm
sudo pacman -Rns $(pacman -Qtdq) --noconfirm
sudo rm -rf ~/.cache*
sudo updatedb
df -h
echo done :)
