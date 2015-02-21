# Stop correcting me when commands are correct!!
unsetopt correct

# `cd` into directory by only typing directory name
setopt autocd

# Vim-style editing on command line
setopt vi

# Shares history between shells instantaneously
setopt share_history

# Turn off fucking beeps
setopt no_beep
setopt no_hist_beep
setopt no_list_beep

# Turns off ZSH second-guessing of where the shells says you are after following
# a symbolic link into a directory. ZSH tries to be 'nice' by telling you that you are
# still in /path/to/link, not where the link actually points to ... wtf?
setopt chase_links

# hist_ignore_space - that's a stupid idea - how often am i going to deliberately hide a command from
# history, compared to the number of times i copy a command with a space at the 
# fucking beginning?
setopt no_hist_ignore_space
setopt extended_history # save timestamp of command and duration
setopt inc_append_history # Add comamnds as they are typed, don't wait until shell exit
setopt hist_expire_dups_first # when trimming history, lose oldest duplicates first
setopt hist_ignore_dups # Do not write events to history that are duplicates of previous events
setopt hist_find_no_dups # When searching history don't display results already cycled through twice
setopt hist_reduce_blanks # Remove extra blanks from each command line being added to history
setopt hist_verify # don't execute, just expand history

setopt no_global_export
