#!/bin/zsh
# coding:     utf-8
# Author:     Maksim Totmin, @iMaciaveller

#git

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '[ %b]'
