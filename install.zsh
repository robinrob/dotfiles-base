#!/usr/bin/env zsh

source zsh/colors.zsh

# Remove custom dotfiles first
./uninstall.zsh


# Installation
./symlinks.zsh

./jetbrains.zsh

# OS-X Defaults
#########################################################################
#./osx.zsh

green "Installing crontab ..."
crontab config/files/crontab.cron


green "Installing Robin's custom keyboard layout ..."
cp config/files/Robin.keylayout.xml ~/Library/Keyboard\ Layouts/Robin.keylayout

green "Installing sudoers file ..."
# Make sure that the file has correct permissions first!
sudo chmod 440 config/files/sudoers
sudo chown root:wheel config/files/sudoers
sudo cp config/files/sudoers /etc/sudoers
sudo chmod 444 config/files/sudoers

# red "Removing folder: ~/.vim"
# rm -rf ~/.vim

