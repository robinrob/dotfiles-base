# source $FUNCS_PATH

function prompt_robin_precmd {
  # Check for untracked files or updated submodules since vcs_info does not.
  # if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
    # branch_format="%{$(brightwhite)%}(%{$(cyan)%}%b%f%u%c%{$(brightwhite)%})%f "
  # else
    branch_format="%{$(brightwhite)%}(%{$(cyan)%}%b%f%u%c%{$(red)%}●%{$(brightwhite)%})%f "
  # fi

  zstyle ':vcs_info:*:prompt:*' formats "${branch_format}"

  vcs_info 'prompt'

  # if (( $+functions[python-info] )); then
    # python-info
  # fi

  # Get ruby information
  # if (( $+functions[ruby-info] )); then
    # ruby-info
  # fi
}

function prompt_robin_setup {
  setopt LOCAL_OPTIONS
  unsetopt XTRACE KSH_ARRAYS
  prompt_opts=(cr percent subst)

  # Load required functions.
  autoload -Uz add-zsh-hook
  autoload -Uz vcs_info

  # Add hook for calling vcs_info before each command.
  add-zsh-hook precmd prompt_robin_precmd

  # Formats:
  #   %b - branchname
  #   %u - unstagedstr (see below)
  #   %c - stagedstr (see below)
  #   %a - action (e.g. rebase-i)
  #   %R - repository path
  #   %S - path in the repository
  local branch_format="%{($(cyan)%}%b%f%u%c)"
  local action_format="(%{$(magenta)%}%a%f)"
  local unstaged_format="%{$(brightyellow)%}●%f"
  local staged_format="%{$(green)%}●%f"

  # Set vcs_info parameters.
  zstyle ':vcs_info:*' enable bzr git hg svn
  zstyle ':vcs_info:*:prompt:*' check-for-changes true
	zstyle ':vcs_info:*:prompt:*' stagedstr "${staged_format}"
	zstyle ':vcs_info:*:prompt:*' unstagedstr "${unstaged_format}"
  zstyle ':vcs_info:*:prompt:*' actionformats "${branch_format}${action_format}"
  zstyle ':vcs_info:*:prompt:*' formats "${branch_format}"
  zstyle ':vcs_info:*:prompt:*' nvcsformats   ""

  # Set python-info parameters.
  zstyle ':prezto:module:python:info:virtualenv' format '(%v)'

  # Define prompts.
  if [[ "$HOSTNAME" == "$VENUS_HOSTNAME" ]]
  then
	  HOSTCOLOR="$(brightgreenprompt)"
  else
	  HOSTCOLOR="$(brightredprompt)"
  fi

  # ICON="⚡"
  ICON="🖕"

  SEP="$(magentaprompt)$(repeat_string 80 -)"$'\n'

  PS1="${SEP}$(magentaprompt)%n$(brightwhiteprompt)@%{$HOSTCOLOR%}%B%m%b%f $(blueprompt)\$(directory_name)/ \${vcs_info_msg_0_}$ICON$(defaultprompt)  "

  RPS1="%(?.$(greenprompt)(%?%).$(redprompt)(%?%))$(defaultprompt)"
 
  # Line prefix displayed when waiting for input
  PS2="Waiting for input fool! >> "

  # Line prefix displayed when using shell `select` loop
  PS3="Make a choice bitch! >> "

  # Line prefix displayed when using `xtrace` option
  PS4="Debug that fucker: >> %N:%i"
}

prompt_robin_setup "$@"
