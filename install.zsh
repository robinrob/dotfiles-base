#!/usr/bin/env zsh

source config/dotfiles/zshenv

# Remove custom dotfiles first
./uninstall.zsh


# Installation
$ZDOT_HOME/symlinks.zsh

$ZDOT_HOME/jetbrains.zsh

# OS-X Defaults
#########################################################################
#./osx.zsh

green "Installing crontab ..."
crontab $DOTFILESBASE_HOME/config/files/crontab.cron


green "Installing Robin's custom keyboard layout ..."
cp $DOTFILESBASE_HOME/config/files/Robin.keylayout.xml ~/Library/Keyboard\ Layouts/Robin.keylayout


green "Installing sudoers file ..."
SUDOERS_PATH=$DOTFILESBASE_HOME/config/files/sudoers
# Make sure that the file has correct permissions first!
sudo chmod 440 $SUDOERS_PATH/sudoers
sudo chown root:wheel $SUDOERS_PATH/sudoers
sudo cp $SUDOERS_PATH/sudoers /etc/sudoers
sudo chmod 444 $SUDOERS_PATH/sudoers
