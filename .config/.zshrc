# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/marclol/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PATH=$HOME/.local/bin:$PATH

alias py='python'
alias py3='python3'
alias ovpn='sudo openvpn'
alias lsa='ls -la'
alias pacman='sudo pacman -Sy --noconfirm'
alias doom='doomretro -iwad $HOME/Downloads/Doom1.WAD'
alias jerry='jerry -D &'

eval "$(thefuck --alias)"

PROMPT=" %B%F{cyan}%~%f%b %B%F{yellow} >~> %f%b"

neofetch | lolcat
