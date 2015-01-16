#!/usr/bin/env zsh

SUDOERS_PATH=$DOTFILES_BASE_HOME/config/files/sudoers
# Make sure that the file has correct permissions first!
sudo chmod 440 $SUDOERS_PATH
sudo chown root:wheel $SUDOERS_PATH
sudo cp $SUDOERS_PATH /etc/sudoers
sudo chmod 444 $SUDOERS_PATH
