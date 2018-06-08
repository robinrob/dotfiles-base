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
