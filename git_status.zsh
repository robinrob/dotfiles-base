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

clean_file_line () {
	local +r Line=$1 
	print $(gsed 's/s$//g' <<< $(gsed 's/(.*)//g' <<< $line))
}

  git_status () {
	local +r Start=$(date +'%s.%N')
IFS="
"

local +r TextMode
while getopts :t opt
do
  case $opt in
    t) TextMode="true"; shift ;;
  esac
done


local +r -a GitStage
for line in "${(@f)"$(git diff --raw --cached | gawk '{print $NF}')"}"
do
  GitStage=($GitStage $line)
done

typeset -A FileStatuses
typeset -A FileNums

index=1
for line in $(git status -s)
do
  # local +r FileStatus=$(print $line | gawk '{print $1}')
  local +r FileStatus=$(ggrep -Poe '^([^\s]+)(?=\s)' <<< $line)
  local +r Filename=$(remove_trailing_slash $(gawk '{print $2}' <<< $line))
  # print "Filename: ${Filename}"

  FileStatuses[$Filename]=$FileStatus
  FileNums[$Filename]=$index

  index=$(( index + 1 ))
done

if (( $# > 0 ))
then
  local +r FilenameOrNum=$1
  if $(is_number $FilenameOrNum)
  then
    git_do_by_item_num 'git status' $FilenameOrNum
  else
    git status $*
  fi
else
  if [[ -n $TextMode ]]
  then
    local text=""
  fi

  # Read all lines from command output INCLUDING newlines
  for line in "${(@f)"$(git status)"}"
  do
    # local +r PossibleFile=$(remove_trailing_slash $(clean_file_line $Line | gawk '{print $NF}'))
    # local +r PossibleFile=$(remove_trailing_slash $(print $(clean_file_line $ggLine) | gawk '{print $NF}') | tr -d ' ')
    local PossibleFile=$(remove_trailing_slash $(ggrep -Poe '(?<=\s)([^\s]+)$' <<< $(clean_file_line $line)))

    # print "PossibleFile: ${PossibleFile}" >> out.txt
    # print "PossibleFile: ${PossibleFile}"
    if $(is_file_or_dir $PossibleFile) || $(string_contains_word $line 'deleted:')
    then

      local +r RawLine=$line
      local +r Filename=$PossibleFile
      local +r FileStatus=${FileStatuses[$Filename]}
      local +r FileNum=${FileNums[$Filename]}

      if $(is_in_set AM MM $FileStatus)
      then
        local +r Line="$(red $RawLine)"
      elif $(is_in_set $GitStage "$Filename")
      then
        local +r Line="$(green $RawLine)"
      else
        local +r Line="$(red $RawLine)"
      fi

      local +r FileLine="$Line \($FileNum\)"


      if [[ -n $TextMode ]]
      then
        text="$text $FileLine\n"
      else
        print "$FileLine"
      fi

    else
      if [[ -n $TextMode ]]
      then
        text="$text $line\n"
      else
        print $line
      fi
    fi

  done

  if [[ -n $TextMode ]]
  then
    print $text
  fi
fi
local +r End=$(date +'%s.%N')
# print $(( End - Start))


}

git_do() {
  IFS=" "

local +r Command=$1
local +r -a FilenamesOrNums=($*[2,-1])

if (( $# > 1 )) && $(is_number $FilenamesOrNums)
then
  for FileNum in $FilenamesOrNums
  do
    git_do_by_item_num "$Command" $FileNum
  done
else
  eval "$*"
fi

}

git () {
	noglob hub $@
}
diff () {
	# undefined
	builtin autoload -XUz
}
remove_trailing_slash () {
	local +r String=$1 
	if [[ $String[-1] == "/" ]]
	then
		print $String[1,-2]
	else
		print $String
	fi
}
is_number () {
	local +r Value=$1 
	if [[ -n $Value ]] && [[ -z $(print $Value | tr -d '[0-9]') ]]
	then
		return 0
	else
		return 1
	fi
}
git_do_by_item_num () {
	local +r Task=$1 
	local +r ItemNum=$2 
	[[ -z $ItemNum ]] && return 1
	local +r Item=$(git_get_item_by_num $ItemNum) 
	eval "$Task $Item"
}
git_get_item_by_num () {
	local +r ItemNum=$1 
	[[ -n $ItemNum ]] || return 1
	IFS="
" 
	local +r -a Items=($(git status -s | gawk '{print $2}')) 
	print $Items[$ItemNum]
}
is_file_or_dir () {
	local +r Path=$1 
	if [[ -f $Path ]] || [[ -d $Path ]]
	then
		return 0
	else
		return 1
	fi
}
string_contains_word () {
	local +r String=$1 
	local +r SubString=$2 
	[[ "${String#*$SubString}" != "$String" ]] && return 0
	return 1
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
red () {
	color_shell_text RED $@
}
color_shell_text () {
	local +r Color=$1 
	shift
	local +r Text=$@ 
	local +r StartColorTag=$(create_color_tag $(get_color_code $Color)) 
	local +r EndColorTag=$(create_color_tag $(get_color_code DEFAULT)) 
	color_text $StartColorTag $EndColorTag $Text
}
create_color_tag () {
	local Prefix='"["' 
	local Suffix='m' 
	while getopts :p opt
	do
		case $opt in
			(p) Prefix="%{$Prefix" 
				Suffix="$Suffix%}" 
				shift ;;
		esac
	done
	local +r ColorCode=$1 
	print ${Prefix}${ColorCode}${Suffix}
}
get_color_code () {
	local +r ColorName=$1 
	print '${COLORS['$ColorName']}'
}
color_text () {
	local +r StartColorTag=$1 
	local +r EndColorTag=$2 
	shift 2
	local +r Text=$@ 
	if [[ -n "$Text" ]]
	then
		print "$(eval print $StartColorTag'$Text'$EndColorTag)"
	else
		print -n "$(eval print $StartColorTag)"
	fi
}
green () {
	color_shell_text GREEN $@
}
