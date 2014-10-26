#!/usr/bin/env zsh

source colors.zsh

./uninstall.zsh

# Initialising framework ...
# cd ../../framework
# git submodule update --init --recursive

green "Configuring files ..."
./files.zsh

brightwhite "Done."
