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
## fix:
- [ ] uniform colorscheme and theme
- [x] make cbatticon and volumeicon run by default
- [x] gimp, libreoffice and discord cant open because .config is owned by root and only modifieable by root 
- [ ] add y/n to scripts
- [ ] pipewire audio not working (for mpv)


## misc:

spotify-tui cant be installed via the aur, this is a fix:

https://www.reddit.com/r/archlinux/comments/ytj40j/opensslsys_building_issues_in_rust_for_spotifytui/
