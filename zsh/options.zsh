#!/bin/zsh
# coding:     utf-8
# Author:     Maksim Totmin, @iMaciaveller

autoload -U colors && colors

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/mat/.config/i3status/scripts:"
export EDITOR="nano"
export MUTT_EDITOR="nano"
export SSH_KEY_PATH="~/.ssh/id_rsa"
export TERM="xterm-256color"

#НАВИГАЦИЯ
##авто cd
setopt autocd
setopt extended_glob

##автодополнение TAB
autoload -U compinit && compinit
_comp_options+=(globdots)

# Установка-снятие опций шелла
setopt   notify globdots correct pushdtohome cdablevars autolist
setopt   correctall autocd recexact longlistjobs
setopt   autoresume histignoredups pushdsilent noclobber
setopt   autopushd pushdminus extendedglob rcquotes mailwarning
unsetopt bgnice autoparamslash
unsetopt nomatch

autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic
unsetopt nomatch