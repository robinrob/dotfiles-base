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
