#!/usr/bin/env zsh


local +r ItermPrefsPlist="$DOTFILES_BASE_HOME/config/files/iterm/com.googlecode.iterm2.plist"

rm -f $ItermPrefsPlist
sudo ln -s $ItermPrefsPlist /Library/Preferences/com.googlecode.iterm2.plist
