## dotfiles for arch with install scripts

### archinstall:
```sh
cd /home/
git clone https://github.com/maisl0l/dotfiles
archinstall --config /home/dotfiles/archinstall/user_configuration.json --disk_layouts /home/dotfiles/archinstall/user_disk_layout.json --creds /home/dotfiles/archinstall/user_credentials.json
```
```sh
bash /home/dotfiles/pacman.sh && bash /home/dotfiles/updoot.sh && bash /home/dotfiles/yay.sh
```
