source $ZDOT_HOME/color_codes.zsh

# Color the given shell text with the given color
function color_shell_text {
  local +r Color=$1; shift
  local +r Text=$@

  local +r StartColorTag=$(create_color_tag $(get_color_code $Color))
  local +r EndColorTag=$(create_color_tag $(get_color_code DEFAULT))

  color_text $StartColorTag $EndColorTag $Text
}

# Color the given prompt text with the given color
function color_prompt_text  {
  local +r Color=$1; shift
  local +r Text=$@

  local +r StartColorTag=$(create_color_tag -p $(get_color_code $Color))
  local +r EndColorTag=$(create_color_tag -p $(get_color_code DEFAULT))

  color_text $StartColorTag $EndColorTag $Text
}

# Start coloring with given start color tag. If text is supplied, terminate with the given end color tag.
function color_text {
  local +r StartColorTag=$1; local +r EndColorTag=$2; shift 2
  local +r Text=$@

	if [[ -n "$Text" ]]
	then
    # Terminated coloring
    print "$(eval print $StartColorTag'$Text'$EndColorTag)"
	else
    # Open-ended coloring
    print -n "$(eval print $StartColorTag)"
	fi
}

# Combine the given color code with the relevant symbols to generate the shell/prompt-specific color tag
function create_color_tag {
  # Create basic prefix/suffix symbols to wrap around color code, used in shell
  local Prefix='"["'; local Suffix='m'

  while getopts :p opt
  do
    case $opt in
      # Append extra symbols to prefix/suffix to make the tag work in prompt
      p) Prefix="%{$Prefix"; Suffix="$Suffix%}"; shift ;;
    esac
  done

  local +r ColorCode=$1
	
  # Complete color tag
	print ${Prefix}${ColorCode}${Suffix}
}

# Get the corresponding color code for the given color name
function get_color_code {
  local +r ColorName=$1

	print '${COLORS['$ColorName']}'
}

# Progamatically-define shell and prompt color functions by iterating over
# the COLORS hash.
# 
# Resulting functions are e.g. red, redprompt, green, greenprompt etc.
for key in ${(k)COLORS}
  do
    eval "function ${key:l} { color_shell_text $key \$@ }"
    eval "function ${key:l}prompt { color_prompt_text $key \$@ }"
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
