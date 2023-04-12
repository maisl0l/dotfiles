#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$HOME/.local/bin:$PATH

alias py='python'
alias py3='python3'
alias ovpn='sudo openvpn'
alias lsa='ls -la'
alias pacman='sudo pacman -Sy --noconfirm'
alias doom='doomretro -iwad $HOME/Downloads/Doom1.WAD'
alias jerry='jerry -D &'
alias fixkb="setxkbmap 'ch(de)'"
alias bat='cat'

eval "$(thefuck --alias)"

PS1=' \[\e[0;96m\]\w \[\e[0;1;38;5;228m\]>\[\e[0;1;38;5;228m\]~\[\e[0;1;38;5;228m\]> \[\e[0m\]'

neofetch --backend --kitty --size 460 --source "$HOME/.config/pikachu-sprite.png"
