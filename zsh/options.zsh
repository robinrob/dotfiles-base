# Stop correcting me when commands are correct!!
unsetopt correct

# `cd` into directory by only typing directory name
setopt autocd

# Vim-style editing on command line
setopt vi

# Shares history between shells instantaneously
setopt share_history

# Turn off fucking beeps
setopt nobeep
setopt nohistbeep
setopt nolistbeep

# Turns off ZSH second-guessing of where the shells says you are after following
# a symbolic link into a directory. ZSH tries to be 'nice' by telling you that you are
# still in /path/to/link, not where the link actually points to ... wtf?
setopt chaselinks

# That's a stupid idea - how often am i going to deliberately hide a command from
# history, compared to the number of times i copy a command with a space at the 
# fucking beginning?
setopt nohistignorespace

setopt noglobalexport
