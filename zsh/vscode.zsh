#!/usr/bin/env zsh

VSCODE_SETTINGS_PATH="$HOME/Library/Application Support/Code/User/settings.json"
MY_SETTINGS_PATH=$DOTFILES_BASE_HOME/config/files/vscode_settings.json

rm -f $VSCODE_SETTINGS_PATH
ln -s $MY_SETTINGS_PATH $VSCODE_SETTINGS_PATH