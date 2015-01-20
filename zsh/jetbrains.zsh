#!/usr/bin/env zsh

source $COLORS_PATH
source $ZDOT_HOME/indents.zsh

function install {
  LABEL=$1
  FILEPATH=$2

  print "\t${ITEM}$(green Installing) $(yellow $LABEL) $(green config to) $(yellow $FILEPATH) $(green ...)"
	cp $FILEPATH $FILEPATH.backup 2> /dev/null

	# For some reason the evals were required here
	cmd="rm -f $FILEPATH"
	eval $cmd
	cmd="cp $DOTFILES_BASE_HOME/config/files/Robin.jetbrains.xml $FILEPATH"
	eval $cmd
}

green "Installing Jetbrains IDE config files ..."

install IntelliJIdea $INTELLIJ_CONFIG

# install RubyMine $RUBYMINE_CONFIG
#
# install PyCharm $PYCHARM_CONFIG
#
# install WebStorm $WEBSTORM_CONFIG
