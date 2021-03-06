#!/usr/bin/env zsh

source $COLORS_PATH
source $ZDOT_HOME/indents.zsh

function install {
  LABEL=$1
  FILEPATH=$2
  DIRPATH=$(dirname $FILEPATH)

  print "\t${ITEM}$(green Installing) $(yellow $LABEL) $(green config to) $(yellow $FILEPATH) $(green ...)"
	cp $FILEPATH $FILEPATH.backup 2> /dev/null

  if ! [[ -d $DIRPATH ]]
  then
    mkdir $DIRPATH
  else
	  rm -f $FILEPATH
  fi
	cp "$DOTFILES_BASE_HOME/config/files/Robin.jetbrains.xml" $FILEPATH
	# cp "$DOTFILES_BASE_HOME/config/files/Robin.jetbrains.xml.old" $FILEPATH
}

green "Installing Jetbrains IDE config files ..."

install IntelliJIdea $INTELLIJ_CONFIG

# install RubyMine $RUBYMINE_CONFIG
#
# install PyCharm $PYCHARM_CONFIG
#
# install WebStorm $WEBSTORM_CONFIG

green "\t${ITEM}Installing Jetbrains IDE Dark Solarized color scheme ..."
cp $DOTFILES_BASE_HOME/config/files/intellij-colors-solarized/Solarized\ Dark.icls $INTELLIJ_COLORS/
