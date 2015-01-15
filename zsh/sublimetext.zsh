#!/usr/bin/env zsh

readonly SublimeText=~/Library/Application\ Support/Sublime\ Text\ 3

rm -f $SublimeText/Packages 

ln -s $DOTFILES_BASE_HOME/config/files/Packages $SublimeText/Packages
