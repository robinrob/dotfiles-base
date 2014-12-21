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

# Shell colors
function default {
	color default $@
}

function black {
	color black $@
}

function darkgrey {
	color darkgrey $@
}

function red {
	color red $@
}

function brightred {
	color brightred $@
}

function green {
	color green $@
}

function brightgreen {
	color brightgreen $@
}

function yellow {
	color yellow $@
}

function brightyellow {
	color brightyellow $@
}

function blue {
	color blue $@
}

function brightblue {
	color brightblue $@
}

function magenta {
	color magenta $@
}

function brightmagenta {
	color brightmagenta $@
}

function cyan {
	color cyan $@
}

function brightcyan {
	color brightcyan $@
}

function white {
	color white $@
}

function brightwhite {
	color brightwhite $@
}

function maganda {
	brightmagenta $@
}

# Prompt colors
function defaultprompt {
	promptcolor default $@
}

function blackprompt {
	promptcolor black $@
}

function darkgreyprompt {
	promptcolor darkgrey $@
}

function redprompt {
	promptcolor red $@
}

function brightredprompt {
	promptcolor brightred $@
}

function greenprompt {
	promptcolor green $@
}

function brightredprompt {
	promptcolor brightred $@
}

function brightgreenprompt {
	promptcolor brightgreen $@
}

function yellowprompt {
	promptcolor yellow $@
}

function brightyellowprompt {
	promptcolor brightyellow $@
}

function blueprompt {
	promptcolor blue $@
}

function brightblueprompt {
	promptcolor brightblue $@
}

function magentaprompt {
	promptcolor magenta $@
}

function brightmagentaprompt {
	promptcolor brightmagenta $@
}

function cyanprompt {
	promptcolor cyan $@
}

function brightcyanprompt {
	promptcolor brightcyan $@
}

function whiteprompt {
	promptcolor white $@
}

function brightwhiteprompt {
	promptcolor brightwhite $@
}

function magandaprompt {
	brightmagentaprompt $@
}

#for key in ${(k)colors}
#do

#function $key; color $key $@

#done
