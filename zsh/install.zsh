#!/usr/bin/env zsh

source colors.zsh

# Remove custom dotfiles first
./uninstall.zsh


# Installation
./symlinks.zsh

./jetbrains.zsh

cd ../config/files

green "Installing crontab ..."
crontab crontab.cron

green "Installing Robin's custom keyboard layout ..."
cp Robin.keylayout.xml ~/Library/Keyboard\ Layouts/Robin.keylayout

green "Installing sudoers file ..."
# Make sure that the file has correct permissions first!
sudo chmod 440 sudoers
sudo chown root:wheel sudoers
sudo cp sudoers /etc/sudoers
sudo chmod 444 sudoers

# red "Removing folder: ~/.vim"
# rm -rf ~/.vim

# OS-X Defaults
#########################################################################
./osx.zsh
