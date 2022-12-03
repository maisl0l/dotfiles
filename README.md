## dotfiles for arch with install scripts

### archinstall:
```sh
cd /home/
git clone https://github.com/maisl0l/dotfiles

archinstall --config https://raw.githubusercontent.com/maisl0l/dotfiles/main/archinstall/user_configuration.json --disk_layouts https://raw.githubusercontent.com/maisl0l/dotfiles/main/archinstall/user_disk_layout.json --creds https://raw.githubusercontent.com/maisl0l/dotfiles/main/archinstall/user_credentials.json
```

### chroot:
```sh
cd /home/
git clone https://github.com/maisl0l/dotfiles

bash /home/dotfiles/pacman.sh && bash /home/dotfiles/updoot.sh
```
