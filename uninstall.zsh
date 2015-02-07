#!/usr/bin/env zsh

source zsh/colors.zsh


DOTFILES_HOME=~/Programming/robin/zsh/projects/dotfiles
OLD_DIR=/tmp/dotfiles             							

red "Uninstalling ..."

yellow "\t${ITEM}Creating $OLD_DIR for backup of any existing dotfiles in ~ ..."
# rm -rf $OLD_DIR
mkdir -p $OLD_DIR


function move_files {
    FILES=`ls . | xargs`
    FILES=(${(s: :)FILES})

    yellow "\t${ITEM}Moving any existing dotfiles from ~ to $OLD_DIR ..."
    for file in $FILES; do
        mv ~/.$file $OLD_DIR/ 2> /dev/null && cyan "\t\t$ITEM$file moved to $OLD_DIR"
    done
}


cd $DOTFILES_HOME/dotfiles-base/config/dotfiles
move_files
