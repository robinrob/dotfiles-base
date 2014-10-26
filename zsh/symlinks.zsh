#!/usr/bin/env zsh

source colors.zsh
source indents.zsh


DOTFILES_HOME=~/Programming/robin/zsh/projects/dotfiles
OLD_DIR=/tmp/dotfiles

green "Sym-linking dotfiles ..."


cd $DOTFILES_HOME/dotfiles-base/config/dotfiles
DIR=`pwd`
FILES=`ls * | xargs`
FILES=(${(s: :)FILES})

yellow "\t${ITEM}Sym-linking files to home directory ..."
for file in $FILES; do
    ln -s $DIR/$file ~/.$file && cyan "\t\t${ITEM}$file sym-linked to $HOME/$file"
done


yellow "\t${ITEM}Installing framework to .framework ..."
ln -s $DOTFILES_HOME/framework ~/.framework