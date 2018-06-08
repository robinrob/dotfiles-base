expand_function () {
	local +r FunctionName=$1 
	local +r -U FunctionList=($(expand_function_list $FunctionName)) 
	for func in $FunctionList
	do
		which $func
	done
}
expand_function_list () {
	local +r FunctionName=$1 
	local +r -U ExistingFunctions=($FunctionName $2) 
	IFS=" " 
	local +r -U Words=($(func_contents $FunctionName | ggrep -Po '\b[[:alpha:]_]+\b' | xargs)) 
	local +r -U Functions
	for word in $Words
	do
		if [[ word != $FunctionName ]] && ! $(is_in_set $Functions $word) && ! $(is_in_set $ExistingFunctions $word) && is_name_case $word && is_function $word
		then
			Functions=($Functions $word) 
			Functions=($Functions $(expand_function_list $word $Functions)) 
		fi
	done
	print $FunctionName $(setify_list $Functions)
	return 0
}
func_contents () {
	local +r FunctionName=$1 
	which $FunctionName | ghead -n -1 | gtail -n +2
}
is_in_set () {
	IFS=" " 
	local +r -U Set=(${(s/ /)*[1,-2]}) 
	local +r -U Value=$*[-1] 
	for item in $Set
	do
		if [[ $item == $Value ]]
		then
			return 0
		fi
	done
	return 1
}
is_name_case () {
	local +r Word=$1 
	if [[ $(print $Word | tr -d '[:alpha:]_') == "" ]]
	then
		return 0
	else
		return 1
	fi
}
is_function () {
	if which $1 | ggrep "$1 () {" > /dev/null
	then
		return 0
	else
		return 1
	fi
}
setify_list () {
	local +r -U Set=($*) 
	copy_print $Set
}
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
		FormatStr="$FormatStr\n" 
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
