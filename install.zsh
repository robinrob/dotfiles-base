#!/usr/bin/env zsh

source zsh/colors.zsh
source zsh/env_variables.zsh


# Remove custom dotfiles first
$DOTFILES_BASE_HOME/uninstall.zsh


# Installation
$ZDOT_HOME/symlinks.zsh

# $ZDOT_HOME/jetbrains.zsh


# Initialise prompt stuff
autoload -Uz promptinit
promptinit

source ~/.variables
[[ $fpath = *dotfiles-base* ]] || fpath=($FUNCS_HOME $fpath)
autoload -U +X $fpath[1]/*(:t) 2> /dev/null


# Git
#########################################################################
print "$(green Installing global gitconfig:) $(yellow gitconfig) $(green ...)"
ln -s $DOTFILES_BASE_HOME/config/files/gitconfig $HOME/.gitconfig


# OS-X Defaults
#########################################################################
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

green "Installing VS Code configuration ..."
$ZDOT_HOME/vscode.zsh


green "Generating bookmarks ..."
generate_all_bookmarks > /dev/null


# green "Installing homebrew packages ..."
# $ZDOT_HOME/homebrew.zsh


green "Setting OSX defaults ..."
$ZDOT_HOME/osx.zsh


green "Installing git-number tool ..."
$ZDOT_HOME/install_git_numbers.zsh


green "Installing iTerm2 preferences plist file ..."
$ZDOT_HOME/install_iterm_plist.zsh

green "Done."
