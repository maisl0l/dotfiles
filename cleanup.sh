#!/bin/bash
sudo pacman -Syy
sudo pacman -Scc --noconfirm
sudo pacman -Rns $(pacman -Qtdq) --noconfirm
sudo rm -rf ~/.cache*
df -h
