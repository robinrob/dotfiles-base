#!/usr/bin/env zsh

DOTFILES_HOME=$HOME/Programming/$USER/zsh/projects/dotfiles/dotfiles-base/config/dotfiles
OLD_DIR=/tmp/dotfiles

[[ $fpath = *dotfiles-base* ]] || fpath=($DOTFILES_BASE_HOME/zsh/functions $fpath)
autoload -U +X $fpath[1]/*(:t) 2> /dev/null

source zsh/colors.zsh


red "Uninstalling ..."

yellow "\t${ITEM}Creating $OLD_DIR for backup of any existing dotfiles in ~ ..."
# rm -rf $OLD_DIR
mkdir -p $OLD_DIR


# Move any existing dotfiles belonging to the framework from $HOME to $OLD_DIR
function move_framework_files {
  FILES=$(ls $DOTFILES_HOME | xargs)
  FILES=(${(s: :)FILES})

  yellow "\t${ITEM}Moving any existing framework dotfiles from ~ to $OLD_DIR ..."
  for file in $FILES; do
    local +r PathInHome=$HOME/.$file

    if [[ -f $PathInHome ]] || [[ -s $PathInHome ]]
    then
      mv $PathInHome $OLD_DIR/ && cyan "\t\t$ITEM$PathInHome moved to $OLD_DIR"
    fi
  done
}

move_framework_files
