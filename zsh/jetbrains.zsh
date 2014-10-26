#!/usr/bin/env zsh

source colors.zsh
source indents.zsh
source functions.zsh

function install() {
    LABEL=$1
    FILEPATH=$2

	yellow "\t${ITEM}Installing $LABEL config ..."
	cp $FILEPATH $FILEPATH.backup 2> /dev/null

	# For some reason the evals were required here
	cmd="rm -f $FILEPATH"
	eval $cmd
	cmd="ln ../config/files/Robin.xml $FILEPATH"
	eval $cmd
}

green "Installing Jetbrains IDE config files ..."

install IntelliJIdea "~/Library/Preferences/IntelliJIdea13/keymaps/Robin.xml"

# install RubyMine $RUBYMINE_CONFIG
#
# install PyCharm $PYCHARM_CONFIG
#
# install WebStorm $WEBSTORM_CONFIG
