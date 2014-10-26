#!/usr/bin/env zsh

source colors.zsh
source indents.zsh
source dotfiles.zsh

OLD_DIR=/tmp/dotfiles

green "Sym-linking dotfiles ..."

./uninstall.zsh

function symlink_files {
    DIR=`pwd`
    FILES=`ls * | xargs`
    FILES=(${(s: :)FILES})

    yellow "\t${ITEM}Sym-linking files to home directory ..."
    for file in $FILES; do
        ln -s $DIR/$file ~/.$file && cyan "\t\t${ITEM}$file sym-linked to $HOME/$file"
    done
}

cd ../config/dotfiles
symlink_files
cd -

cd ../config/files
symlink_files

ln -s ../../framework ~/.framework