copy_print () {
	local +r Usage="copy_print [-n] (no newline) <strings>" 
	local +r NoNewline=$FALSE_VALUE 
	while getopts :n opt
	do
		case $opt in
			(n) NoNewline=$TRUE_VALUE  ;;
		esac
	done
	local +r FormatStr='%s' 
	if [[ $NoNewline == $FALSE_VALUE ]]
	then
		FormatStr="$FormatStr
" 
	else
		shift 1
	fi
	printf $FormatStr "$*" | pbcopy && pbpaste
}
no () {
	while :
	do
		print "no"
	done
}
create_color_functions () {
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
	for key in ${(k)COLORS}
	do
		eval "function ${key:l} { color_shell_text $key $@ }"
		eval "function ${key:l}prompt { color_prompt_text $key $@ }"
	done
}
create_color_functions
