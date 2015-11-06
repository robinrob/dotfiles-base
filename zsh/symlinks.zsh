#!/usr/bin/env zsh

source $COLORS_PATH
source $ZDOT_HOME/indents.zsh


DOTFILES_HOME=~/Programming/robin/zsh/projects/dotfiles
OLD_DIR=/tmp/dotfiles

green "Sym-linking dotfiles ..."


cd $DOTFILES_HOME/dotfiles-base/config/dotfiles
DIR=`pwd`
FILES=`ls . | xargs`
FILES=(${(s: :)FILES})

yellow "\t${ITEM}Sym-linking files to home directory ..."
for file in $FILES; do
    filepath=$DIR/$file
    ln -s $filepath ~/.$file 2> /dev/null && cyan "\t\t${ITEM}$filepath sym-linked to $HOME/$file"
done

green "Sym-linking csgo config to $CSGO_CONFIG ..."
ln -s $DOTFILES_BASE_HOME/config/files/csgo_config.cfg $CSGO_CONFIG 2> /dev/null 2>&1
