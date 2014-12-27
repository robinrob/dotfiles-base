typeset -Ag colors

colors[default]='0'
colors[black]='0;30'
colors[darkgrey]='1;30'
colors[red]='0;31'
colors[brightred]='1;31'
colors[green]='0;32'
colors[brightgreen]='1;32'
colors[yellow]='0;33'
colors[brightyellow]='1;33'
colors[blue]='0;34'
colors[brightblue]='1;34'
colors[magenta]='0;35'
colors[brightmagenta]='1;35'
colors[cyan]='0;36'
colors[brightcyan]='1;36'
colors[white]='0;37'
colors[brightwhite]='1;37'
colors[maganda]='1;35'


function shellcolor {
  color=$1; shift

  start=$(colorencode $(colorcode $color))
  end=$(colorencode $(colorcode default))

  color $start $end $@
}

function promptcolor  {
  color=$1; shift

  start=$(colorencode -p $(colorcode $color))
  end=$(colorencode -p $(colorcode default))

  color $start $end $@
}

function color {
  start=$1; end=$2; shift 2

	if [[ -n "$@" ]]
	then
    print "$(eval print $start'$@'$end)"
	else
    print -n "$(eval print $start)"
	fi
}

function colorencode {
  prefix='"["'; suffix='m'
  while getopts :p opt
  do
    case $opt in
      p) 	prefix='%{"["'; suffix='m%}'; shift ;;
    esac
  done
	
	print ${prefix}${1}${suffix}
}

function colorcode {
	print '${colors['$1']}'
}

# Progamatically-define shell and prompt color functions. This one's a beauty!!
for key in ${(k)colors}
  do
    eval "function $key { shellcolor $key \$@ }"
    eval "function ${key}prompt { promptcolor $key \$@ }"
done

# Now you will be able to use terminal and prompt color functions like below.
# Each type comes in two forms: open-ended, and default-ended. This is 
# demonstrated in the below examples:
# 
# Terminal colors:
#
# red this is red; print this is default
#
# red; print this is red; default; print this is default
# print "$(red This is red), whilst this is default"
# print "$(red)This is red, $(default)whilst this is default"
#
#
# Prompt colors:
#
# redprompt this is red prompt; defaultprompt this is default
#
# redprompt; print this is red prompt; defaultprompt; print this is default
