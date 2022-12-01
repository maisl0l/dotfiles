#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias py='python'
alias py3='python3'
alias ovpn='sudo openvpn'
alias lsa='ls -la'
alias pacman='sudo pacman -Sy --noconfirm'

PS1=' \[\e[0;96m\]\w \[\e[0;1;38;5;228m\]>\[\e[0;1;38;5;228m\]~\[\e[0;1;38;5;228m\]> \[\e[0m\]'

neofetch | lolcat