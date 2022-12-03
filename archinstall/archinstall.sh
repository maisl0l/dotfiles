#!/bin/bash
  #Use custom install config
    sudo pacman -Sy archlinux-keyring
    archinstall --config https://raw.githubusercontent.com/maisl0l/dotfiles/main/archinstall/user_configuration.json --disk_layouts https://raw.githubusercontent.com/maisl0l/dotfiles/main/archinstall/user_disk_layout.json --creds https://raw.githubusercontent.com/maisl0l/dotfiles/main/archinstall/user_credentials.json
