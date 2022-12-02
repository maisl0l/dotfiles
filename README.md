##dotfiles for arch with install scripts

###Inside a live archiso run:
  
```sh
sudo pacman -Sy --noconfirm git
cd /home/
git clone https://github.com/maisl0l/dotfiles
archinstall --config /home/dotfiles/archinstall/user_configuration.json --disk_layouts /home/dotfiles/archinstall/user_disk_layout.json --creds /home/dotfiles/archinstall/user_credentials.json

```

###Once rebooted, run:
```sh
git clone https://github.com/maisl0l/dotfiles
bash /home/dotfiles/pacman.sh && bash /home/dotfiles/updoot.sh && bash /home/dotfiles/yay.sh
```
