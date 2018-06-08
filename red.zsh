typeset -Ag COLORS

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
red () {
	shellcolor RED $@
}
shellcolor () {
	color=$1 
	shift
	start=$(colorencode $(colorcode $color)) 
	end=$(colorencode $(colorcode DEFAULT)) 
	color $start $end $@
}
color () {
	start=$1 
	end=$2 
	shift 2
	if [[ -n "$@" ]]
	then
		print "$(eval print $start'$@'$end)"
	else
		print -n "$(eval print $start)"
	fi
}
colorencode () {
	prefix='"["' 
	suffix='m' 
	while getopts :p opt
	do
		case $opt in
			(p) prefix="%{$prefix" 
				suffix="$suffix%}" 
				shift ;;
		esac
	done
	print ${prefix}${1}${suffix}
}
colorcode () {
	print '${COLORS['$1']}'
}
