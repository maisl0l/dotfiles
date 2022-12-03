### archinstall configs:
```sh
curl https://raw.githubusercontent.com/maisl0l/dotfiles/main/archinstall.sh --output archinstall.sh
bash archinstall.sh
```

### install dotfiles:
```sh
cd /home/
git clone https://github.com/maisl0l/dotfiles
bash /home/dotfiles/pacman.sh && bash /home/dotfiles/updoot.sh
```
### fix:

gimp, libreoffice and discord cant open because .config is owned by root and only modifieable by root 

add y/n to scripts
