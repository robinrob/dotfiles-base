#!/usr/bin/env zsh

readonly SublimeText=~/Library/Application\ Support/Sublime\ Text\ 3

mv $SublimeText/Packages $SublimeText/Packages.backup 2> /dev/null

ln -s $DOTFILES_BASE_HOME/config/files/Packages $SublimeText/Packages
