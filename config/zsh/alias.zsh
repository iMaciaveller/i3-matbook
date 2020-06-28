#!/bin/zsh
# coding:     utf-8
# Author:     Maksim Totmin, @iMaciaveller

# ALIASES
alias df='df -l -H'
alias nano='nano -cix'
alias neofetch='neofetch --off'
alias sirot='pacman -Qdt && sudo pacman -Rs $(pacman -Qtdq)'
alias i3config='vim ~/.config/i3/config'
alias i3sconfig='vim ~/.config/i3status/config'
alias autorun='vim ~/.config/i3status/scripts/autorun'
alias ls='ls_extended'
alias connect='/usr/bin/nmtui-connect'
# GO REMOTE
source ~/documents/gorem.zsh
# FLATPAKS
alias spotify='flatpak run com.spotify.Client'
alias onlyoffice='flatpak run org.onlyoffice.desktopeditors'
