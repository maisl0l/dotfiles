#!/bin/bash

df -h
sudo pacman -Scc --noconfirm
sudo pacman -Rns $(pacman -Qtdq) --noconfirm
sudo rm -rf ~/.cache*
df -h

