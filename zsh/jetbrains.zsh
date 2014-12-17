#!/usr/bin/env zsh

source $COLORS_PATH
source $ZDOT_HOME/indents.zsh
source $ZDOT_HOME/functions.zsh

function install {
    LABEL=$1
    FILEPATH=$2

	yellow "\t${ITEM}Installing $LABEL config ..."
	cp $FILEPATH $FILEPATH.backup 2> /dev/null

	# For some reason the evals were required here
	cmd="rm -f $FILEPATH"
	eval $cmd
	cmd="ln $DOTFILES_BASE_HOME/config/files/Robin.jetbrains.xml $FILEPATH"
	eval $cmd
}

green "Installing Jetbrains IDE config files ..."

install IntelliJIdea "~/Library/Preferences/IntelliJIdea13/keymaps/Robin.xml"

# install RubyMine $RUBYMINE_CONFIG
#
# install PyCharm $PYCHARM_CONFIG
#
# install WebStorm $WEBSTORM_CONFIG
