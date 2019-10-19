#!/bin/zsh
# coding:     utf-8
# Author:     Maksim Totmin, @iMaciaveller

##ALIASES
#
alias df='df -l -H'
alias nano='nano -cix'
alias neofetch='neofetch --off'
alias sirot='pacman -Qdt && sudo pacman -Rs $(pacman -Qtdq)'
alias i3config='nano -cix ~/.config/i3/config'
alias i3sconfig='nano -cix ~/.config/i3status/config'

##GO REMOTE
#
alias gopi='ssh mat@home.totmin.ru -p10122'
alias gorch='ssh n2400-00-195@10.124.101.27'