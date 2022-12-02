#!/bin/bash
sudo pacman -Syu --noconfirm
mkdir /tmp/yay
cd /tmp/yay
curl -OJ 'https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=yay'
sudo makepkg -si –-noconfirm
cd
rm -rf /tmp/yay
yay --version
