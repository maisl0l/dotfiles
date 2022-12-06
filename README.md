## archinstall configs:
```sh
curl https://raw.githubusercontent.com/maisl0l/dotfiles/main/archinstall.sh --output archinstall.sh
bash archinstall.sh
```

## install dotfiles:
```sh
cd
git clone https://github.com/maisl0l/dotfiles
bash /home/dotfiles/pacman.sh && bash /home/dotfiles/updoot.sh
```
### fix:
- [ ] kitty colorscheme
- [x] make cbatticon and volumeicon run by default
- [x] gimp, libreoffice and discord cant open because .config is owned by root and only modifieable by root 
- [ ] add y/n to scripts
