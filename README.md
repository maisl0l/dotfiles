# dotfiles

dotfiles for arch with install scripts

Inside a live archiso;
  
``sudo pacman -Sy --noconfirm git``
``cd /home/``
``git clone https://github.com/maisl0l/dotfiles``
``archinstall --config /home/dotfiles/archinstall/user_configuration.json --disk_layouts /home/dotfiles/archinstall/user_disk_layout.json --creds /home/dotfiles/archinstall/user_credentials.json``
