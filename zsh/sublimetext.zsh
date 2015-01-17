#!/usr/bin/env zsh

[[ -d $SUBLIMETEXT_HOME ]] || exit

rm -rf $SUBLIMETEXT_HOME/Packages 

ln -s $DOTFILES_BASE_HOME/config/files/Packages $SUBLIMETEXT_HOME/Packages
