#!/bin/zsh
# coding:     utf-8
# Author:     Maksim Totmin, @iMaciaveller

#HISTORY 

##Где хранить историю
HISTFILE=~/.config/zsh-history
##Число команд, сохраняемых в HISTFILE
SAVEHIST=5000
##Чucлo кoмaнд, coxpaняeмыx в сеансе
HISTSIZE=5000
##Игнорировать повторяющиеся команды
setopt  HIST_IGNORE_ALL_DUPS
##Игнopupoвать лишние пpoбeлы
setopt  HIST_IGNORE_SPACE
##Удалять из файл истории пустые строки
setopt  HIST_REDUCE_BLANKS
##время выполнения команд
setopt extended_history
##История становится общей между всеми сессиями
setopt share_history
