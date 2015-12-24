#!/bin/bash
 
#Include Zsh profile 
. /usr/local/etc/profile.d/z.sh

#Exporting Zsh path and config theme
export ZSH=/Users/augustomna2010/.oh-my-zsh
ZSH_THEME="bureau"
plugins=(git)

#Compiling OnMyZsh
source $ZSH/oh-my-zsh.sh

# Includes
. $HOME/.dotfiles/.goaliases
. $HOME/.dotfiles/.functions
. $HOME/.dotfiles/.path
. $HOME/.dotfiles/.aliases
. $HOME/.dotfiles/.keyboard

#Include fuck
eval "$(thefuck --alias)"
