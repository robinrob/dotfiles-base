function get_color_map {
  local +r -A COLORS

  COLORS[DEFAULT]='0'
  COLORS[BLACK]='0;30'
  COLORS[DARKGREY]='1;30'
  COLORS[RED]='0;31'
  COLORS[BRIGHTRED]='1;31'
  COLORS[GREEN]='0;32'
  COLORS[BRIGHTGREEN]='1;32'
  COLORS[YELLOW]='0;33'
  COLORS[BRIGHTYELLOW]='1;33'
  COLORS[BLUE]='0;34'
  COLORS[BRIGHTBLUE]='1;34'
  COLORS[MAGENTA]='0;35'
  COLORS[BRIGHTMAGENTA]='1;35'
  COLORS[CYAN]='0;36'
  COLORS[BRIGHTCYAN]='1;36'
  COLORS[WHITE]='0;37'
  COLORS[BRIGHTWHITE]='1;37'
  COLORS[MAGENTA]='1;35'


  local +r -a ColorsList
  for color_name in ${(@k)COLORS}
  do
    ColorsList=($ColorsList $color_name ${COLORS[$color_name]})
  done

  print $ColorsList
}

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
  local +r -A ColorMap=($(get_color_map))
	print ${ColorMap[$1]}
}

# Progamatically-define shell and prompt color functions. This one's a beauty!!
local +r -A ColorMap=($(get_color_map))
for key in ${(k)ColorMap}
  do
    print "key: ${key}"
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
