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
	color=$1
	shift;

  start=$(colorencode $(colorcode $color))
  end=$(colorencode $(colorcode default))

	if [[ -n "$@" ]]
	then
    print "$(eval print $start'$@'$end)"
	else
    print -n "$(eval print $start)"
	fi
}

function colorcode {
	print '${colors['$1']}'
}

function colorencode {
	prefix='"["'
	suffix='m'
	print ${prefix}${1}${suffix}
}

function promptcolor {
	color=$1
	shift;
  start=$(promptcolorencode $(colorcode $color))
  end=$(promptcolorencode $(colorcode default))
	if [[ "$@" == "" ]]
	then
    print "$(eval print $start)"
	else
    print "$(eval print $start'$@'$end)"
	fi
}

function promptcolorencode {
	prefix='%{"["'
	suffix='m%}'
	print ${prefix}${1}${suffix}
}

# Progamatically-define color and colorprompt functions. This one's a beauty!!
for key in ${(k)colors}
  do
    eval "function $key { color $key \$@ }"
    eval "function ${key}prompt { promptcolor $key \$@ }"
done
