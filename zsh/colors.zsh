source $ZDOT_HOME/color_codes.zsh

function shellcolor {
  color=$1; shift

  start=$(colorencode $(colorcode $color))
  end=$(colorencode $(colorcode DEFAULT))

  color $start $end $@
}

function promptcolor  {
  color=$1; shift

  start=$(colorencode -p $(colorcode $color))
  end=$(colorencode -p $(colorcode DEFAULT))

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
      p)
        prefix="%{$prefix"; suffix="$suffix%}"; shift ;;
    esac
  done
	
	print ${prefix}${1}${suffix}
}

function colorcode {
	print '${COLORS['$1']}'
}

# Progamatically-define shell and prompt color functions. This one's a beauty!!
for key in ${(k)COLORS}
  do
    eval "function ${key:l} { shellcolor $key \$@ }"
    eval "function ${key:l}prompt { promptcolor $key \$@ }"
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
