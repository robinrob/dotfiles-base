# Functions
###############################################################################

# NEVER use aliases in this file! This file is loaded first before aliases.

source ~/Programming/robin/zsh/projects/dotfiles/dotfiles-base/zsh/colors.zsh


function upper {
	TEXT="$@"
	print $TEXT:u
}

function lower {
	TEXT="$@"
	print $TEXT:l
}

function join {
	local IFS="$1"; shift; print "$*";
}

function split {
  SEPERATOR=$1
  WORD=$2

  WORDS=$(eval 'WORDS=("${(s/'$SEPERATOR'/)WORD}"); print $WORDS')

  join " " $WORDS
}

function join_args {
	IFS=""
	print "$*"
}

function cat_print {
	cat $1 && cat $1 | pbcopy
}

function copy_print {
	print $1 && print $1 | pbcopy
}

function get_record {
  RECORD=$1
	cmd="grep $RECORD $RECORDS_PATH"
	val=$(eval "$cmd")
	val2=`print ""$val"" | awk -F: '{print $2}'`
	copy_print ""$val2""
}

function email {
	ADDRESS=$1
	SUBJECT=$2
	BODY=$3
	
	print "$BODY" | mail -s "$SUBJECT" "$ADDRESS"
}

function reminder {
	ADDRESS=$1
	MESSAGE=$2
	email $ADDRESS "REMINDER: $MESSAGE"
}

function note {
	cd $TEMP_HOME && $EDITOR "$1.txt"
}

function song {
  SONG=$(remove_extension $1)
  cd $MERCURY_HOME/docs/creative/songs && $EDITOR "$SONG.txt"
}

function write {
	cd $DOCS_HOME/creative/writing && $EDITOR "$1.txt"
}

function prepend {
	FILE=$1
	TEXT=$2
	
	CONTENTS=`cat $FILE`
	rm $FILE
	print $TEXT > $FILE
	print $CONTENTS >> $FILE
}

function new {
	while getopts :i:e:f:o: name
	do
		case $name in
			i) INTERPRETER="$OPTARG" ;;
			e) EXTENSION="$OPTARG" ;;
			f) FILENAME="$OPTARG" ;;
			o) NO_OPEN="$OPTARG" ;;
			*) usage ;;                # display usage and exit
		esac
	done


  FILE=$(extend_file $FILENAME $EXTENSION)

	FILE_DISPLAY=$(yellow $FILE)
	COLOR="green"
	CREATE_SHEBANG_MSG="$COLOR 'Creating, +x-ing and shebanging new file: $FILE_DISPLAY'"
	SHEBANG_MSG="$COLOR 'Shebanging and +x''ing existing file: $FILE_DISPLAY'"
	CREATE_MSG="$COLOR 'Creating new file: $FILE_DISPLAY'"
	OPEN_MSG="$COLOR 'Opening existing file: $FILE_DISPLAY'"
	
	if ! [ -f $FILE ]
	then
		if [ -n "$INTERPRETER" ]
		then	
			eval $CREATE_SHEBANG_MSG
			print "#!/usr/bin/env $INTERPRETER" > $FILE
			chmod +x $FILE
		else
			eval $CREATE_MSG
			touch $FILE
		fi
	else
		if [ -n "$INTERPRETER" ]
		then
			eval $SHEBANG_MSG
			prepend $FILE "#!/usr/bin/env $INTERPRETER\n"
			chmod +x $FILE
		else
			eval $OPEN_MSG
		fi
	fi
	
	# Reset variables for subsequent executions!
  unset INTERPRETER
  unset FILENAME
  unset EXTENSION
	
	if ! [[ "$NO_OPEN" == "noopen" ]]
	then
		$EDITOR $FILE
	fi

  print -z ./$FILE
}

# Shortcut for `new` function
function new_s {
	INTERPRETER=$1
	EXTENSION=$2
	FILENAME=$3
	NOOPEN=$4
	
	new -i $INTERPRETER -e $EXTENSION -f $FILENAME
}

function extend_file {
  BASENAME=$1
  EXTENSION=$2

  PARTS=("${(s/./)BASENAME}")

  if [[ $PARTS[-1] == $EXTENSION ]]
  then
    print $BASENAME
  else
    print $BASENAME.$EXTENSION
  fi
}

function hnew {
	PROJECT=$1
	cat $HTML_TEMPLATES_HOME/template.html | sed 's/Title/'$PROJECT'/' > $PROJECT.html
}

function hcnew {
	PROJECT=$1
	cat $HTML_TEMPLATES_HOME/practice_css.html | sed 's/Title/'$PROJECT'/' > $PROJECT.html
}

function hlnew {
	PROJECT=$1
	mkdir $PROJECT
	cat $HTML_TEMPLATES_HOME/template.html | sed 's/Title/'$PROJECT'/' > $PROJECT/$PROJECT.html
	touch $PROJECT/styles.less
	cd $PROJECT
}

function hjnew {
	PROJECT=$1
	cat $HTML_TEMPLATES_HOME/practice_js.html | sed 's/Title/'$PROJECT'/' > $PROJECT.html
}

function hbnew {
	PROJECT=$1
	cat $HTML_TEMPLATES_HOME/practice_bootstrap.html | sed 's/Title/'$PROJECT'/' > $PROJECT.html
}

function jsnew {
	new -i node -e js -o noopen -f $1
	print "\nrequire(process.env.JS_LIB_HOME + '/log')" >> $1.js
}

function new_from_template {
  TEMPLATE=$1
  FILENAME=$(singlize_extension $2)

  cp $TEMPLATE $FILENAME
  chmod +x $FILENAME
  $EDITOR $FILENAME
  print -z ./$FILENAME
}

function sprnew {
  FILENAME=$1
  new_from_template $SH_HOME/templates/practice.sh $FILENAME.sh
}

function zprnew {
  FILENAME=$1
  new_from_template $ZSH_HOME/templates/practice.zsh $FILENAME.zsh
}

function rnew {
  FILENAME=$1
  new_from_template $RUBY_HOME/templates/practice.rb $FILENAME.rb
}

function plnew {
  FILENAME=$1
  new_from_template $PERL_HOME/templates/practice.pl $FILENAME.pl
}

function hcexample {
	PROJECT=$1
	mkdir $PROJECT
	cd $PROJECT
	hnew $PROJECT
	cssnew "style"
	$EDITOR$EDITOR *
}

function cd_pull {
	output=`cd $1 && git branch | head -1 > /dev/null`
	comps=("${(s/* /)output}") # notice the quotes
	branch=$comps[2]

	cd $1 && git pull origin $branch
}

function cd_save {
	cd_action $1 rake_do save
}

function cd_commit {
	cd_action $1 rake_do commit
}

function cd_count_all {
	cd_action $1 rake_do count_all
}

function cd_status {
	cd_action $1 rake_do status
}

function cd_diff {
	cd_action $1 git diff
}

function cd_action {
	REPO=$1
	cd $REPO
	print "$(green "In repo: ")$(yellow $REPO)"
	shift
	$@
	cd - > /dev/null
}

function opens {
	cd $SCREENSHOTS_HOME && despace && open `lasts`
}

function rns {
	cd $SCREENSHOTS_HOME && despace
	
	cmd="cp `lasts` $1"
	green $cmd
	eval $cmd
}

function t3389 {
	telnet $1 3389
}

function t22 {
	telnet $1 22
}

function wopen {
	$EDITOR `which $1`
}

function jlint {
	cat $1 | jsonlint
}

function docs {
	HOSTNAME=$1
	return $FILES_NAME/$HOSTNAME/docs
}

function gcr {
	`git clone -b master git@bitbucket.org:robinrob/$1.git`
}

function mvd {
	mv ~/Downloads/$1 $2
}

function color_words {
	TEXT=$1
	PATTERN=$2
	COLOR=$3
	print $TEXT | gsed "s/$PATTERN/$($COLOR $PATTERN)/gI"
}

function libfind {
	COLOR='maganda'
	while getopts :c:d:p: name
	do
		case $name in
			c) CAT="$OPTARG" ;;
			d) DIR="$OPTARG" ;;
			p) PATTERN="$OPTARG" ;;
			*) usage ;;                # display usage and exit
		esac
	done
	
	result_grep="`ggrep --binary-file=without-match --line-number -i --no-messages --recursive --word-regexp $PATTERN $DIR`"
	# grep -ri $PATTERN $DIR
	# result_grep="`grep -ri $PATTERN $DIR`"
	results=("${(f)result_grep}")

	if [ -n "$results" ]
	then
		for result in $results
		do
			color_words $result $PATTERN $COLOR
		done
	fi
	
	result_find=`find $DIR -path ./lib -prune -o -type f -name "*$PATTERN*"`
	results=("${(f)result_find}")

	for result in $results
	do

		if [[ "$CAT" == "" ]]
		then
			color_words $result $PATTERN $COLOR
		else
			# If CAT not null
			eval "$COLOR $result"
			color_words "`cat $result`" $PATTERN $COLOR
		fi
	done
}

# cat
function libfind_c {
	libfind -c yes -d $1 -p $2
}

# libfind-shortcut
function libfind_s {
	DIR=$1
	PATTERN=$2
	CAT=$3
	
	if [[ "$CAT" == "no" ]]
	then
			libfind -d $1 -p $2 -c ""
	else
			libfind -d $1 -p $2 -c yes
	fi
}

function exec_exists {
	EXEC=$1
	
	if [[ "`which $EXEC`" == "$EXEC not found" ]]
	then
		print "no"
	else
		print "yes"
	fi
}

function alias_exists {
	NAME=$1
	ALIAS_FILE=$2
	result=`grep "alias $NAME" $ALIAS_FILE`
	
	if [[ "$result" == "" ]]
	then
		print "no"	
	else
		print "yes"
	fi
}

function create_alias {
	NAME=$1
	VALUE=$2
	ALIAS_FILE=$3
	SUCCESS_MSG=$4

  while getopts :o: name
  do
    case $name in
      o) OVERRIDE=$OPTARG ;;
      *) usage ;;
    esac
  done

	if [[ "$(alias_exists $NAME $ALIAS_FILE)" == "no" ]]
	then
		print "
alias $NAME=\"$VALUE\"" >> $ALIAS_FILE
		print "$SUCCESS_MSG"
	else
    if ! [[ $OVERRIDE == "yes" ]]
    then
		  red "Alias already exists!"
    fi
	fi

  print -z $NAME
}

function delete_alias {
  ALIAS=$1

  if [[ -n $ALIAS ]]
	  then
	  for file in $alias_files
	  do
      sed -i '/'$ALIAS'/d' $file && builtin unalias $ALIAS 2> /dev/null && green "Removed alias: $ALIAS"
	  done
  fi
}

function al {
	create_alias $1 $2 $DOTFILES_HOME/aliases.zsh
}

function bookmark {
	create_bookmark $BOOKMARKS_PATH $@
}

function work_bookmark {
	create_bookmark $WORKBOOKMARKS_PATH $@ chrome
}

function create_bookmark {
	BOOKMARKS_PATH=$1
	NAME=$2
	URL=$3
	BROWSER=$4
	
	if [ -z "$BROWSER" ]
	then
		BROWSER="open"
	fi
	
	ALIAS="${BROWSER} '${URL}'"
  SUCCESS_MSG="$(yellow)$NAME $(green)bookmarked as $(yellow)$URL $(green)with browser $(yellow)$BROWSER"
	
	create_alias $NAME $ALIAS $BOOKMARKS_PATH $SUCCESS_MSG
	
	source $BOOKMARKS_PATH
}

function fr {
	PATTERN=$1
	find . -name "*$PATTERN*" 2> /dev/null
}

function gr {
	grep -ri $@ *
}

function egr {
	egrep -ri $@ *
}

function file_grep {
	grep -A 3 $2 $1
}

function rake_do {
	TASK=$1
	
	if [ -f Rakefile ]
	then
		print "$(green "Using Rakefile: ")$(yellow $(/usr/local/bin/gls $PWD/Rakefile))"

    shift

    if [[ -n $* ]]
    then
      echo "task_args: $*"
      cmd='rake '$TASK'['''$(join ', ' $*)''']'
      print "cmd: $cmd"
		else
			cmd="rake $TASK"
		fi

    eval $cmd
	else
		red "No Rakefile!"
		# rake -f $RAKEFILE_HOME/Rakefile save
	fi
}


function rsd {
	rake_do sub_deinit $@
}

function rks {
	rake_do save $@
}

function rkss {
  rake_do each_sub $@
}

function rkc {
	rake_do commit $@
}

function rka {
	rake_do add $@
	git status
}

function null {
  if [ -z "$1" ]
  then
    green yes
  else
    red no
  fi
}

function killp {
  PROCESS=$1
	if [ -z "$PROCESS" ]
  then
		red "Must give name of process!"
		
	else
    print "$(green)Killing all $(yellow)${PROCESS}$(green) processes ...$(default)"
		
		ps aux | grep -i $PROCESS | awk '{print $2}' | xargs kill -KILL 2> /dev/null
	fi
}

function rakeup {
  rm -rf rake
  git rm -r --cached rake
	git submodule add --force git@bitbucket.org:robinrob/rakefile.git rake
	ln -s rake/Rakefile ./
}

function rakedown {
	rake -r $RAKEFILE_HOME/Rakefile sub_deinit[rake]
	rm Rakefile
}

function fabup {
	gsa git@bitbucket.org:robinrob/fabfile.git fabfile
	ln -s fabfile/fabfile.py ./
}

function fabdown {
	fab sub_deinit:fabfile
	rm fabfile.py
}

function lsd {
	ls `dirname $1`
}

function silent_cp {
	yes | cp $1 $2 1> /dev/null 2> /dev/null
}

function silent {
	`$@ 2> /dev/null`
}

function save_crontab {
	CRON_NAME="$HOSTNAME.cron"
	SAVE_PATH="$DOTFILES_HOME/$CRON_NAME"
	TMP_PATH="${SAVE_PATH}.tmp"
	
	rm -f $SAVE_PATH
	green "Saving crontab to $SAVE_PATH ..."
	crontab -l > $TMP_PATH
	silent_cp $TMP_PATH $SAVE_PATH
	rm $TMP_PATH
}

function save_jetbrains {
	print "$(green "Copying Jetbrains config from: ")$(yellow "$INTELLIJ_CONFIG ...")"
	silent_cp $INTELLIJ_CONFIG $DOTFILES_HOME/
}

function save_homebrew {
  brew_list=$DOTFILES_BASE_HOME/config/files/homebrew.txt
  rm -f $brew_list
  brew list > $brew_list
}

function cd_dir {
	cd "$(join / $@)"
}

function cddir {
	cd `dirname $1`
}

function browser {
	open -a $BROWSER "$@"
}

function bb {
	result=`ls -d .git 2> /dev/null`
	if [ "$result" ]
	then
		# url=`git config --get remote.origin.url | awk '{split($1,a,"/"); print a[2]}'`
    branch=$(git_branch)
		url=`git config --get remote.origin.url | awk '{split($1,a,"@"); print a[2]}' | awk '{split($1,a,":"); print a[2]}'`
		url="https://bitbucket.org/${url}/?at=$branch"
		green "Repo found: $url"
	else
		url="https://bitbucket.org/robinrob"
	fi
	
	green "Opening $url ..."
	open -a $BROWSER $url
}

function bb_url {
	GIT_URL=`git config --get remote.origin.url`
	print "https://bitbucket.org/`print $GIT_URL | awk '{split($1,a,"@"); print a[2]}' | awk '{split($1,a,":"); print a[2]}'`"
}

function bb_commit_url {
	COMMIT=$1
	print "`bb_url`/commits/$COMMIT"
}

function bbcm {
	open `bb_commit_url $1`
}

function bbcmr {
	open "`bb_commit_url $1`/raw"
}

function cleanhome {
	for file in `gfind . -maxdepth 1 \( ! -regex '.*/\..*' \) -type f`
	do
		green "Moving $file to $TRASH_HOME"
		mv $file ~/.Trash
	done
}

function dir_exists {
	ls -d $1 2> /dev/null 1> /dev/null && print "yes"
}

function is_git {
	dir_exists '.git'
}

function is_chef {
	dir_exists '.chef'
}

function show_git {
	if [ "$(is_git)" ]
	then
		green "Is Git"
	else
		red "Not Git"
	fi
}

function gro {
	if [ "$(is_git)" ]
	then
		green `git_origin`
	else
		red "Not Git"
	fi 
}

function git_origin {
	if [ "$(is_git)" ]
	then
		print `git config --get remote.origin.url`
	fi
}

function delexcept {
	while getopts :r:f: name
	do
		case $name in
			r) REGEX="$OPTARG" ;;
	    f) FOR_REAL="$OPTARG" ;;
	    *) usage ;;
		esac
	done

	if [ -n "$FOR_REAL" ]
	then
		red "Executing for real!"
		despace -t d && find . -depth 1 \( ! -regex ".*$REGEX.*" \) | xargs rm -r
	else
		green "Running in test mode."
		despace -t d && find . -depth 1 \( ! -regex ".*$REGEX.*" \) | xargs
	fi
	
	FOR_REAL=''
	REGEX=''
}

function count_non_empty {
	grep . $1 | wc -l
}

function lsp {
	ls $1 | pb
}

function lsa {
	ls $PWD/$1
}

function lsad {
	ls -d $PWD/$1
}

function urlencode {
	setopt localoptions extendedglob
	input=( ${(s::)@} )
	print ${(j::)input/(#b)([^A-Za-z0-9_.!~*\'\(\)-])/%$(([##16]#match))}
}

function points {
	browser "https://sites.google.com/a/cloudreach.co.uk/points-lists/system/app/pages/search?scope=search-site&q=`urlencode $@`"
}


function drive {
	browser "https://drive.google.com/a/cloudreach.co.uk/#search/`urlencode $@`"
}


function rubygems {
	browser "https://rubygems.org/search?utf8=%E2%9C%93&query=`urlencode $@`"
}

function sfs {
	open -a Safari "http://my.safaribooksonline.com/search?q=`urlencode $@`"
}

function wiki {
	browser "http://en.wikipedia.org/wiki/Special:Search?search=`urlencode $@`&go=Go"
}

function imdb {
	browser "http://www.imdb.com/find?ref_=nv_sr_fn&q=`urlencode $@`&s=all"
}

function google {
	browser "https://www.google.ca/#q=`urlencode $@`&safe=active"
}

function bbs {
  browser "https://bitbucket.org/cloudreach/profile/repositories?search=`urlencode $@`"
}

function rubydoc {
	browser "http://ruby-doc.com/search.html?&q=`urlencode $@`"
}

function amz {
	browser "http://www.amazon.com/s/ref=nb_sb_noss_2?url=search-alias%3Daps&field-keywords=`urlencode $@`"
}

function ytube {
	browser "https://www.youtube.com/results?search_query=`urlencode $@`"
}

function stack {
	browser "http://stackoverflow.com/search?q=`urlencode $@`"
}

function ask {

	browser "http://stackoverflow.com/questions/ask?title=`urlencode $@`"
}

function salesf {
	browser "https://cloudreach.my.salesforce.com/_ui/search/ui/UnifiedSearchResults?searchType=2&sen=01t&sen=a0D&sen=098&sen=800&sen=005&sen=00P&sen=006&sen=501&sen=001&sen=00T&sen=00U&sen=810&sen=500&sen=003&sen=00O&sen=00a&sen=a08&sen=550&str=`urlencode $@`"
}

function cases {
	ID=$1
	open -a $BROWSER "https://cloudreach.my.salesforce.com/500?fcf=$ID"
}

function translate {
	while getopts :f:t: name
	do
		case $name in
			f) FROM="$OPTARG" ;;
			t) TO="$OPTARG" ;;
			*) usage ;;                # display usage and exit
		esac
	done

	if [[ "$FROM" == "" ]]
	then
		FROM="tl"
	else
		shift; shift;
	fi

	if [[ "$TO" == "" ]]
	then
		TO="en"
	else
		shift; shift;
	fi

	args="$@"
	url="https://translate.google.com/#$FROM/$TO/$(urlencode ""$args"")"
	browser $url
}

function trn {
	print "$@" | trans
}

function trnf {
	print "$@" | trans :tl
}

function lc {
	LESS_FILE=$1
	cmd="$LESSC_PATH $LESS_FILE > styles.css"
	green $cmd
  $cmd
}

function dev {
	BROWSER=$1
	
	if [[ "$BROWSER" == "" ]]
	then
		BROWSER=$DEFAULT_BROWSER
	fi
	
	browser http://localhost:3000
}

function unixtime {
	SECS=$1
	ruby -e "require 'Date'; puts DateTime.strptime('$SECS', '%s')"
}

function timeunix {
	ruby -e "require 'Time'; puts Time.now().to_i"
}

function replace_all {
	SEARCH=$1
	REPLACEMENT=$2
	FILE_PATTERN="$3"
	
	result=`find . -depth 1 -name $FILE_PATTERN`
	files=("${(f)result}")
	
	for file in $files
	do
		new_contents=`cat $file | sed "s/$SEARCH/$REPLACEMENT/g"`
		rm $file
		print $new_contents > $file
	done
}

function sshfind {
	HOST=$1
	grep -A 3 $HOST ~/.ssh/config
}

function updatesubs {
	git submodule foreach --recursive "`git commit -am 'Updates.' && git push` || exit 0"
}

function save_code {
	# rake each_sub["rake save"]
	rake each_sub["git checkout master; git commit -am 'Auto-update.'; git pull origin master; git push origin master"]
}

function git_branch {
	output=`git branch | head -1`
	echo $output[3,-1]
}

function clean_home {
	find ~/ -depth 1 \( ! -regex '.*/\..*' \) -type f -name * | xargs rm
}

function this_dir {
	print ${PWD##*/}
}

function del {
	files="$@"
	files=(${(s: :)files})
	
	for file in $files
	do
		gmv $file $TRASH_HOME	
	done
}

function bashvulns {
	browser 'http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2014-6271'
	browser 'http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2014-7169'
	browser 'http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2014-6277'
	browser 'http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2014-7187'
	browser 'http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2014-6278'	
	browser 'http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2014-7188'
}

function create_repo_envs {
  result=`ls $PROG_HOME | xargs`

  repos=(${(s: :)result})

  for repo in $repos
  do
    if [[ $repo == "java" ]]
    then
      continue;
    fi
    export "$(pathize $repo)_HOME"=$PROG_HOME/$repo
	done
}


function create_repo_aliases {
  typeset -A abbreviations

  abbreviations[awk]=a
  abbreviations[coffeescript]=cs
  abbreviations[c]=c
  abbreviations[c-plus-plus]=cp
  abbreviations[dotfiles]=d
  abbreviations[dotfiles-base]=db
  abbreviations[force-com]=f
  abbreviations[html-css]=h
  abbreviations[javascript]=j
  abbreviations[markdown]=m
  abbreviations[ocaml]=o
  abbreviations[perl]=pl
  abbreviations[prog]=pr
  abbreviations[python]=p
  abbreviations[ruby]=r
  abbreviations[scala]=sc
  abbreviations[sh]=s
  abbreviations[zsh]=z
  
	
  for repo in ${(k)abbreviations}
  do
		alias_repo_action $repo $abbreviations[$repo] sv cd_save
		alias_repo_action $repo $abbreviations[$repo] cm cd_commit
		alias_repo_action $repo $abbreviations[$repo] st cd_status
		alias_repo_action $repo $abbreviations[$repo] pl cd_pull
    alias_repo_nav $repo $abbreviations[$repo]
	done
}

function alias_repo_action {
	REPO=$1
  REPO_ABBR=$2
	ALIAS_SUFF=$3
	CMD=$4

	alias "$REPO_ABBR$ALIAS_SUFF"="$CMD \$$(pathize $REPO)_HOME"
}

function alias_repo_nav {
  REPO=$1
  REPO_ABBR=$2

  alias "cd${REPO_ABBR}"="cd_dir \$$(pathize $REPO)_HOME"
}

# function languages2 {
# 	languages=(ruby ocaml htmlcss zsh sh javascript coffeescript)
# 	abbrs=(rb oc ht zs sh js cs)
#
# 	for language in $languages
# 	do
# 		alias_repo_action2 $language sv cd_save s
# 		alias_repo_action2 $language cm cd_commit c
# 		alias_repo_action2 $language st cd_status st
# 		alias_repo_action2 $language pl cd_pull p
# 	done
# }
#
# function alias_repo_action {
# 	lang=$1
# 	alias_prefix=$2
# 	cmd=$3
# 	cmd_abbr=$4
# 	alias "$lang[1]$alias_suff"="$cmd $(upper $lang)_HOME"
# }

function odl {
	cd ~/Downloads
	despace
	last_download=`ls -ltr  ~/Downloads | awk '{print $9}' | tail -1`
	print $last_download | pbcopy
	green "Opening latest file: $(yellow)$last_download$(default)"
	open $last_download
}

function dir {	
	if [[ $PWD == $HOME ]]
	then
		dir="~"
	else
		dir=`basename $PWD`
	fi
	print $dir
}

function chpwd {
	git_checkout_master_if_on_detached_head
}

function git_checkout_master_if_on_detached_head {
  detached=$(git branch 2> /dev/null | grep detached)
	
	if [[ -n "$detached" ]]
	then
		red "On detached HEAD! $(green)Switching to branch $(yellow)master"
		git checkout master
	fi		
}

function rvm_gem_list {
	GEMSET=$1
	rvm @$GEMSET do gem list
}


function gems {
	rubygemset=".ruby-gemset"
	if [[ -f $rubygemset ]]
	then
		gemset=`cat $rubygemset`
		rvm_gem_list $gemset
	else
		red "No $rubygemset found."
	fi
}



# function rvm_use_gemset_if_dir_exists {
# 	GEMSET=$1
# 	DIR=$2
#
# 	if [[ -n $(dir_exists $DIR) ]]
# 	then
# 		rvm gemset use $GEMSET
# 	fi
# }
#
# function rvm_use_gemset_chef_if_chef {
# 	rvm_use_gemset_if_dir_exists chef .chef
# }
#
# function rvm_use_gemset_if_cwd {
# 	GEMSET=$1
# 	DIR=$2
#
# 	if [[ `basename $PWD` == $DIR ]]
# 	then
# 		rvm gemset use $GEMSET
# 	fi
# }

function gemset {
	RUBY_GEMSET=$1
	RUBY_VERSION=$2
	
	silent rm .ruby-gemset
	silent rm .ruby-version
	print $RUBY_GEMSET > .ruby-gemset
	print $RUBY_VERSION > .ruby-version
}


function knife_upload_databag {
	DATABAG=$1
	knife upload data bag $DATABAG
}


function website () {
  cd $MRROBINSMITHCOM_HOME
  green 'Starting server ...'
  rake server &
  killp postgres
  green 'Starting postgres ...'
  postgres &
  green 'Opening http://localhost:3000'
  safari http://localhost:3000
}

function preview {
  FILENAME=$1
  $RUBY_HOME/practice/render.rb $FILENAME && open -a $BROWSER html/$FILENAME.html
}


function cpscr {
  SCREENSHOT=$1
  DESTINATION=$2
  cp $SCREENSHOTS_HOME/$SCREENSHOT $DESTINATION
}

function kul {
  knife upload $@
}

function kdl {
  knife download $@
}

function toread {
  TO_READ=$1

  print "$TO_READ" >> $LISTS_HOME/to_read.txt
}

function read1 {
  reading_list=$LISTS_HOME/to_read.txt
  new_list=${reading_list}.new
  next=`head -1 $reading_list`

  safari $next

  # Cycle the top item to the bottom of the list
  tail +2 $reading_list > $new_list
  mv -f $new_list $reading_list
  print $next >> $reading_list
}

function srb {
  red "Rebooting!"
  sudo reboot
}

function ssd {
  red "Shutting DOWN!"
  sudo shutdown -h now
}

function preexec {
  speak $1
}

function speak {
  if [[ $(should_say) == "yes" ]]
  then
    (say $@ &) > /dev/null 2>&1
  fi
}

function should_say {
  if [[ $SAYCMD_OVERRIDE == "" && $SAYCMD == 1 ]]
  then
    print $TRUE_VALUE
  elif [[ $SAYCMD_OVERRIDE == 1 ]]
  then
    print $TRUE_VALUE
  fi
}

function switch_say {
  switch_env SAYCMD
  pretty_print_env SAYCMD
}

function switch_python {
  switch_env USE_PYTHON
  switch_env_permo USE_PYTHON $USE_PYTHON
  pretty_print_env USE_PYTHON
}

function switch_ruby {
  switch_env USE_RUBY
  switch_env_permo USE_RUBY $USE_RUBY
  pretty_print_env USE_RUBY
}

function switch_env {
  ENV=$1

  if [[ -n $ENV && $(eval "print \$$ENV") == 1 ]]
  then
    export $ENV=""
  else
    export $ENV=1
  fi
}

function switch_env_permo {
  ENV=$1
  NEW_VAL=$2

  vars=$ZDOT_HOME/env_variables.zsh

  gsed -i "s/$ENV=.*/$ENV=$NEW_VAL/g" $vars && source $vars
}

function switch_say_override {
  VAL=$1 

  switch_env_permo SAYCMD_OVERRIDE $VAL
  pretty_print_env SAYCMD_OVERRIDE
}

function pretty_print_env {
  ENV=`upper $1`

  printf "$(green)\$$ENV: $(yellow)$(eval print '$'$ENV)\n"
}

function question {
  URL=$1

  gsed -i '/zequestion=/d' $BOOKMARKS_PATH

  bookmark zequestion $URL
}

function pathize {
  VAL=$1

  print $VAL:u | sed 's/[^a-zA-Z]/_/g'
}

function edit_env {
  ENV=$1
  VAL=$2

  gsed -i 's/'$1'=.*/'$1'='$(sed_esc $VAL)'/g' $ENVS_PATH
  source $ENVS_PATH
}

function sed_esc {
  STR=$1

  printf `print $STR | gsed 's/\([/\$]\)/\\\\\1/g'`
}

function encrypt {
  STR="$1"

  rsa_pem=~/.ssh/id_rsa.pub.pem
  if ! [ -f $rsa_pem ]
    then
      green "Generating $rsa_pem first ..."
      openssl rsa -in ~/.ssh/id_rsa -pubout > ~/.ssh/id_rsa.pub.pem
  fi

  print $STR | openssl rsautl -encrypt -pubin -inkey ~/.ssh/id_rsa.pub.pem
}

function decrypt {
  FILE=$1

  cat $FILE | openssl rsautl -decrypt -inkey ~/.ssh/id_rsa
}

function cd {
  builtin cd $@
  dirs -v
}

function singlize {
  print $1 | sed 's/\b\([[:alpha:]]\+\) \+\1\b/\1/g'
}

function singlize_extension {
  print $1 | sed 's/\b\(\.[a-zA-Z0-9]\+\)\+\1\b/\1/g'
}

function remove_extension {
  print $1 | sed 's/\b\(\.[a-zA-Z0-9]\+\)\+\b//g'
}

function extension {
  FILENAME=$1

  PARTS=("${(s/./)FILENAME}")

  print $PARTS[-1]
}

function like {
  FILE_PATH=$1
  EXTENSION=$(extension $FILE_PATH)
  NAME=$(remove_extension $(basename $FILE_PATH))
  DIRNAME=$(dirname $FILE_PATH)

  res1=$(find $DIRNAME -maxdepth 1 -name "*.$EXTENSION")
  res2=$(find $DIRNAME -maxdepth 1 -name "*functions*")
  print $res1 | grep "\.$EXTENSION"
  print $res2 | grep $NAME
}


function find_clean_names {
  find . -maxdepth 1 -type f -regex '.*/[a-zA-Z].*' | sed 's/\.\///g'
}

# Displays the letters of the alphabet represented by the first letter of filenames
# of files in the given directory.
function alphabet_of_files {
  typeset -U alphabet

  files=$(find_clean_names | xargs)
  files=("${(s/ /)files}")

  for file in $files
  do
    initial=$file[1]
    alphabet=($alphabet $initial)
  done
  
  print $alphabet
}

function inverse_alphabet_of_files  {
  inverse_alphabet $(alphabet_of_files)
}

function inverse_alphabet {
  letters=$*

  typeset -U alphabet
  alphabet=(a b c d e f g h i j k l m n o p q r s t u v w x y z)

  typeset -U inverse

  for char in $alphabet
  do
    if [[ $(is_in_set $char $letters) == "no" ]]
    then
      inverse=($inverse $char)
    fi
  done 
  
  print $inverse
}

function is_in_set {
  VAL=$1
  SET=$2
  SET=("${(s/ /)SET}")

  found="no"
  for item in $SET
  do
    if [[ $item == $VAL ]]
    then
      found="yes"
    fi
  done

  print $found
}

function printpb {
  print "$@" | pbcopy
}

function sed_all {
  FIND_EXPRESSION=$1
  SED_EXPRESSION=$2

  files=$(gfind . -type f -regex "$FIND_EXPRESSION" | xargs)
  print "files: $files"
  files=(${(s/ /)files})

  for file in $files
  do
    gsed -i $SED_EXPRESSION $file
  done
}

function gpl {
  git pull origin $(git_branch)
}

function nil {
  # nil function
}

function cgr {
  SEARCH=$1
  shift
  CMD=$@

  eval $CMD | grep $SEARCH
}

# Case-sensitive check for file-existence
function file_exists {
  FILENAME=$(basename $1)
  LOCATION=$(dirname $1)

  EXISTS=$(gfind $LOCATION -name $FILENAME)

  if [[ $EXISTS != '' ]]
  then
    echo 'yes'
  else
    echo 'no'
  fi
}

function clone_robin {
  DEST=robin
  git clone --recursive -b master git@bitbucket.org:robinrob/programming.git $DEST
  cd $DEST 
  git submodule update --init --recursive
}

function sub_arr {
  START=$1
  END=$2
  ARR=$3

  typeset -a ARR
}

function read_fns_to_files {
  funcs=$(pcregrep -o -M -N CR 'function[ a-zA-Z]+\{[^{}]+\}' $ZDOT_HOME/functions.zsh | xargs)

  funcs=("${(s/' '/)funcs}")

  print $funcs[1]
}
