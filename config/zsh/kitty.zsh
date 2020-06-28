#!/bin/zsh

autoload -Uz compinit
compinit

# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

# Kitty aliases
alias icat='kitty +kitten icat'
alias clear='icat --clear && clear'
