#!/usr/bin/env zsh

source $ZSHCOLORS_PATH

IFS=''
cat $FUNCS_PATH | while read line ; do
    
    # Start of function
    if [[ -n $(print $line | pcregrep 'function [_a-zA-Z]+') ]]
    then
      name=$(print $line | pcregrep -o1 'function ([_a-zA-Z]+)')

    # End of function
    elif [[ -n $(print $line | pcregrep '^}$') ]]
    then
      green "Function: $name"
      yellow $block
     
      touch $FUNCS_HOME/$name
      print -r $block >> $FUNCS_HOME/$name

      read line

      block=""

    # Body of function
    else  
      # Strip out indentation from beginning of line
      block="${block}${line[3,-1]}
"

    fi

done
