## archinstall configs:
```sh
curl https://raw.githubusercontent.com/maisl0l/dotfiles/main/archinstall.sh > archinstall.sh
bash archinstall.sh
```

## install dotfiles:
```sh
cd
git clone https://github.com/maisl0l/dotfiles
bash /home/dotfiles/pacman.sh && bash /home/dotfiles/updoot.sh
```
## todo:
- [x] uniform colorscheme
- [x] make cbatticon and volumeicon run by default
- [x] gimp, libreoffice and discord cant open because .config is owned by root and only modifieable by root 
- [ ] add y/n to scripts
- [ ] pipewire audio not working (mpv, discord, doom) temporarily fixed by just using pulseaudio
- [ ] make fn keys work for brightness and volume
- [ ] add underline or other shenanigans to volumeicon, cbatticon and nm-applet
- [ ] split polybar in 3 single bars and make mpd and or spotify-tui work
- [ ] adjust transparency rules for youtube and mpv
- [ ] uniform qt, gtk and rofi theme (pcmanfm, widgets, nitrogen and mpv)
- [x] get rid of the god forsaken beep sound
- [x] add a package list for yay
- [ ] go outside and touch grass >.>

## misc:

spotify-tui cant be installed via the aur, this is a fix:

https://www.reddit.com/r/archlinux/comments/ytj40j/opensslsys_building_issues_in_rust_for_spotifytui/
