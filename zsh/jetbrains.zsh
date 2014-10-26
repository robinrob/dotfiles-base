#!/usr/bin/env zsh

source colors.zsh
source indents.zsh
source functions.zsh

function install() {
    LABEL=$1
    FILEPATH=$2

	yellow "\t${ITEM}Installing $LABEL config ..."
	cp $FILEPATH $FILEPATH.backup 2> /dev/null
	rm -f $FILEPATH
	ln ../config/files/Robin.xml $FILEPATH
}

green "Installing Jetbrains IDE config files ..."

install IntelliJIdea $INTELLIJ_CONFIG

# install RubyMine $RUBYMINE_CONFIG
#
# install PyCharm $PYCHARM_CONFIG
#
# install WebStorm $WEBSTORM_CONFIG
