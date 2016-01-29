#!/bin/bash
 
#Include Zsh profile 
. /usr/local/etc/profile.d/z.sh

#Exporting Zsh path and config theme
export ZSH=/Users/augustomna2010/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git)

#Compiling OnMyZsh
source $ZSH/oh-my-zsh.sh

# Define dotFiles Folders
DOTFILES=$HOME/.dotfiles

# Folders in dotFiles
TOOLS=$DOTFILES/tools
ALIASES=$DOTFILES/aliases
FUNCTIONS=$DOTFILES/functions
CONSTANTS=$DOTFILES/constants

# Includes
. $DOTFILES/.tools
. $DOTFILES/.constants
. $DOTFILES/.goaliases
. $DOTFILES/.aliases
. $DOTFILES/.functions
. $DOTFILES/.path
. $DOTFILES/.keyboard

#Include fuck
eval "$(thefuck --alias)"
