#!/usr/bin/env zsh

source colors.zsh

./uninstall.zsh

green "Configuring files ..."
./files.zsh

brightwhite "Done."
