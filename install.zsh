#!/usr/bin/env zsh

source zsh/colors.zsh

# Remove custom dotfiles first
./uninstall.zsh


# Installation
$ZDOT_HOME/symlinks.zsh

$ZDOT_HOME/jetbrains.zsh


# Initialise prompt stuff
autoload -Uz promptinit
promptinit

source ~/.variables
[[ $fpath = *dotfiles-base* ]] || fpath=($FUNCS_HOME $fpath)
autoload -U +X ${fpath[1]}/*(:t)


# OS-X Defaults
#########################################################################
# green "Setting OSX defaults ..."
# $ZDOT_HOME/osx.zsh

green "Installing silent system sound ..."
cp $DOTFILES_BASE_HOME/config/files/silence.wav ~/Library/Sounds


green "Installing crontab ..."
crontab $DOTFILES_BASE_HOME/config/files/crontab.cron


green "Installing Robin's custom keyboard layout ..."
cp $DOTFILES_BASE_HOME/config/files/Robin.keylayout.xml ~/Library/Keyboard\ Layouts/Robin.keylayout


# green "Installing sudoers file ..."
# $ZDOT_HOME/sudoers.zsh


green "Installing SublimeText3 configuration ..."
$ZDOT_HOME/sublimetext.zsh


green "Generating bookmarks ..."
generate_all_bookmarks
