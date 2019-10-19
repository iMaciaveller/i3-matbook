#!/bin/zsh
# coding:     utf-8
# Author:     Maksim Totmin, @iMaciaveller

#PROMPTS

PROMPT=%{$fg_bold[blue]%}[%n@%m]'» '%{$reset_color%}
#RPROMPT=%{$fg_bold[yellow]%}'[%~]'%{$reset_color%}%{$fg_bold[red]%}'[%T]'%{$reset_color%}
RPROMPT=%{$fg_bold[green]%}[' '\$vcs_info_msg_0_]%{$reset_color%}%{$fg_bold[yellow]%}'[%~]'%{$reset_color%}%{$fg_bold[red]%}'[%T]'%{$reset_color%}
