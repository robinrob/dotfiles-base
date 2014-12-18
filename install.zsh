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

# OS-X Defaults
#########################################################################
green "Setting OSX defaults ..."
$ZDOT_HOME/osx.zsh

green "Installing crontab ..."
crontab $DOTFILES_BASE_HOME/config/files/crontab.cron


green "Installing Robin's custom keyboard layout ..."
cp $DOTFILES_BASE_HOME/config/files/Robin.keylayout.xml ~/Library/Keyboard\ Layouts/Robin.keylayout


green "Installing sudoers file ..."
SUDOERS_PATH=$DOTFILES_BASE_HOME/config/files/sudoers
# Make sure that the file has correct permissions first!
sudo chmod 440 $SUDOERS_PATH
sudo chown root:wheel $SUDOERS_PATH
sudo cp $SUDOERS_PATH /etc/sudoers
sudo chmod 444 $SUDOERS_PATH
