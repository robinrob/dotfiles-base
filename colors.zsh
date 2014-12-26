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


function color {
  start=$1
  end=$2
  shift 2;

	if [[ -n "$@" ]]
	then
    print "$(eval print $start'$@'$end)"
	else
    print -n "$(eval print $start)"
	fi
}

function shellcolor {
	color=$1
	shift;

  start=$(colorencode $(colorcode $color))
  end=$(colorencode $(colorcode default))

  color $start $end $@
}

function promptcolor {
	color=$1
	shift;

  start=$(colorencode -p "$(colorcode $color)")
  end=$(colorencode -p "$(colorcode default)")

  color $start $end $@
}

function colorencode {
  prefix='"["'; suffix='m'
  prefix='%{"["'; suffix='m%}'
  while getopts p opt
  do
    case $opt in
      p) 	prefix='%{"["'; suffix='m%}' ;;
    esac
  done

	
	print ${prefix}${1}${suffix}
}

function colorcode {
	print '${colors['$1']}'
}

# Progamatically-define color and colorprompt functions. This one's a beauty!!
for key in ${(k)colors}
  do
    eval "function $key { shellcolor $key \$@ }"
    eval "function ${key}prompt { promptcolor $key \$@ }"
done