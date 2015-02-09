# I favour using double quotes instead of single quotes for aliases, so that i
# can later do a find/replace to switch something out for an environment
# variable value.

###############################################################################
# Shell commands
###############################################################################
# Just a joke to over-compensate for all the thenners in the world!
alias than="then"

alias pcregrep='pcregrep --color=auto'

alias rmrf="rm -rf"

alias rmr="rm -r"

alias cpx="chmod +x"

alias cmx="chmod -x"

alias age="stat -f '%m%t%Sm %N'"

alias p="print"

alias unal="delete_alias"

alias timezones="sudo systemsetup -listtimezones"

alias dirs="dirs -v"

alias pz="print -z"

alias pp="print -P"

alias pr="print -r"

alias pl="print -l"

alias g="grep"

alias cwd="pwd"

alias dt="date"

alias crl="crontab -l"

alias less='less -m -N -g -i -J --underline-special --SILENT'

alias more='less'

alias mkdir='mkdir -pv'

alias wh="which"

alias w="which"

alias lsn="/usr/local/bin/gls --color=none"

alias lsl="ls -lL"

alias lsd="ls -d"

alias isgit="show_git"

alias isg="isgit"

alias igi="isgit"

alias shell="print $SHELL"

alias cdcocos="cd_dir $COCOS_HOME"


###############################################################################
# GNU commands
###############################################################################
alias mv="gmv"

alias gegrep="gegrep"

alias grep="ggrep"

alias find="gfind"

alias sed="gsed"

alias ls="/usr/local/bin/gls --color"

alias cat="gcat"

alias sed="gsed"

alias awk="gawk"

alias head="ghead"

alias tail="gtail"


###############################################################################
# Shortcuts
###############################################################################
alias pwdp="pwd | pbcopy"

alias cldl="green 'Moving $HOME/Downloads/* to Trash ...'; mv $HOME/Downloads/* $HOME/.Trash"

alias ssd="red 'Shutting DOWN!'; sudo shutdown -h now"

alias ssr="red 'Shutting DOWN!'; sudo shutdown -r now"

alias lgo="osascript -e 'tell application \"loginwindow\" to  «event aevtrlgo»'"

alias cdsam="cd $COCOS_HOME/samples"

alias cdt="cd $COCOS_HOME/samples/js-tests"

alias cdpk="cd $JS_HOME/projects/Parkour"

alias adbd="adb devices"

alias lsdl="ls ~/Downloads"

alias pag="ps aux | grep"

alias pyv="python --version"

alias die="killp chrome"

alias apps="open /Applications"

alias s="source"

alias bcd="nocorrect builtin cd"

alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy"

alias rkls="rake_do git:foreach nil"

alias strash="du -dh $TRASH_HOME"

alias syslog="tail -f /var/log/system.log"


###############################################################################
# Applications/tools
###############################################################################
alias screensaver="sudo open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app"

alias scr="sudo open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app"

alias unz="unzip"

alias dic="dict"

alias intellij="open -a \"$INTELLIJ_IDEA\""

alias int="intellij"

alias utorrent="open -a uTorrent"

alias spotify="open -a Spotify"

alias spo="spotify"

alias mvim="mvim -p"

alias scc="scalac"

alias lessc="$LESSC_PATH"

alias lc="lessc"

alias book="safari"

alias firefoxp="/Applications/Firefox.app/Contents/MacOS/firefox-bin -p"

alias ffp="firefoxp"

alias firefoxr="/Applications/Firefox.app/Contents/MacOS/firefox-bin -p Robin &"

alias ffr="firefoxr"

alias firefoxc="/Applications/Firefox.app/Contents/MacOS/firefox-bin -p Cloudreach &"

alias ffc="firefoxc"

alias adobe="$ADOBE_PATH"

alias m="$EDITOR"

alias gimp="open -a Gimp\ 2"

###############################################################################
# Navigation
###############################################################################
alias cdpon="cd $WORK_HOME/java/PONCEO"

alias cdssh="cd ~/.ssh/"

alias cdscre="cd $SCREENSAVERS_HOME"

alias cdbg="cd $BACKGROUNDS_HOME"

alias cdsp="cd $SPRITES_HOME"

alias cdlst="cd $LISTS_HOME"

alias cdls="cd $LISTS_HOME"

alias cdzd="cd $ZDOT_HOME"

alias cdgg="cd ~/Google\ Drive"

alias cddocs="cd_dir $DOCS_HOME"

alias cdegr="/Users/msl/Programming/robin/sh/practice/egrep"

alias cdsf="cd_dir $RUBY_HOME/projects/salesforce-blog"

alias cdmrp="cd_dir $WORK_HOME/java/br-reportapp"

alias cdbp="cd_dir $MRROBINSMITHCOM_HOME/public/blogposts"

alias cdrk="cd_dir $RAKELIB"

alias cdl="cd_dir $LOCAL_HOME"

alias cdw="cd_dir $WORK_HOME"

alias cdwr="cd_dir $WORK_RUBY_HOME"

alias cdwp="cd_dir $WORK_PYTHON_HOME"

alias cdrecipe="cd_dir $HTMLCSS_HOME/projects/recipe-finder"

alias cdsed="cd_dir $SH_HOME/practice/sed"

alias cdscr="cd_dir $SCREENSHOTS_HOME"

alias cdhbpr="cd_dir $HTML_CSS_HOME/practice/bootstrap"

alias cdcam="cd_dir '$CAMERA_HOME'"

alias ocam="cd_dir $CAMERA_HOME && open ."

alias cdtr="cd $TRASH_HOME"

alias cddr="cd ~/Google\ Drive"

alias cdk="cd_dir $KITCHENPLAN_HOME"

alias cddl="cd_dir ~/Downloads"

alias cdmv="cd_dir ~/Movies"

alias cdaws="cd_dir `dirname $AWS_CONFIG`"

alias cdm="cd_dir $JS_HOME/projects"

alias cdmb="cd_dir $JS_HOME/projects/mobile-app-cordova"

alias cdg="cd_dir $JS_HOME/projects/Parkour"

alias cdmw="cd_dir $JS_HOME/projects/moonwarriors-robin"

alias cdgam="cd_dir $GAM_PATH"

alias cdexp="cd '$EXPENSES_HOME'"

alias cdrec="cd_dir $(dirname $RECORDS_PATH)"

alias cdlists="cd_dir $LISTS_HOME"


###############################################################################
# Development operations
###############################################################################
alias ut="utop"

alias cdfn="cd $FUNCS_HOME"

alias jk="jekyll"

alias jkb="jekyll build --watch"

alias pbu="pythonbrew use"

alias pbl="pythonbrew list"

alias rgm="rvm_gem_list"

alias crv="cat .ruby-version"

alias crg="cat .ruby-gemset"

alias rgfl="rm Gemfile.lock"

alias gib="gem install bundler"

alias rge="rvm gemset empty"

alias rgl="rvm gemset list"

alias rvu="rvm use"

alias rgu="rvm gemset use"

alias rgc="rvm gemset create"

alias rgd="rvm gemset delete"

alias rvl="rvm list"

alias rsc="rails console"

alias plrk="cd rake; green 'Git-pulling rake ...'; git pull $DEFAULT_GIT_REMOTE master; cd - > /dev/null"

alias svrk="cd rake; green 'Rake-saving rake ...'; rake save; cd - > /dev/null"

alias rkser="rake_do rails:server"

alias rls="rails server"

alias rkm="rake_do db:migrate"

alias rkt="rake_do test"

alias rkst="rake_do git:sort_sub"

alias rk="rake"

alias rkjc="rake_do jekyll:clean"

alias gnb="gem install bundler && bundle install"

alias gib="gem install bundler"

alias gi="gem install"

alias bi="bundle install"

alias bu="bundle update"

alias rkup="rakeup"

alias rkdn="rakedown"

alias fbu="fabup"

alias fbd="fabdown"

alias anew="new_s awk awk"

alias pnew="new_s python py"

alias rnew="new_s ruby rb"

alias bnew="new_s bash sh"

alias snew="new_s sh sh"

alias onew="new_s ocaml ml"

alias znew="new_s zsh zsh"

alias jnew="jsnew"

alias cssnew="new -i '' -e css -f"

alias tnew="new -i '' -e txt -f"

alias demo="open $MOBILEAPP_HOME/www/index.html"

alias up2="pythonbrew use 2.7"

alias up3="pythonbrew use 3.2"

alias p2="~/.pythonbrew/pythons/Python-2.7/bin/python"

alias p3="~/.pythonbrew/pythons/Python-3.2/bin/python3"

alias pbrew="pythonbrew"

alias cen="cat $ENVS_PATH"

alias cals="cat $ALIASES_PATH"

alias lsfn="ls $FUNCS_HOME"

alias lfn="lsfn"

alias ctfn="ls $FUNCS_HOME | wc -l"

alias js="jekyll serve"

alias cdnoc="cd $WORK_HOME/ruby/cloudreach-chef/cloudreach-noc-chef"

alias cdms="cd $WORK_HOME/ruby/cloudreach-chef/cloudreach-ms-chef"

alias ccr="cocos run"

alias ccc="cocos compile"

alias ccd="cocos deploy"

alias st="cd_status"

alias sv="cd_save"

alias dcm="cd_commit $DOTFILES_HOME"

alias ddi="cd_diff $DOTFILES_HOME"

alias dst="cd_status $DOTFILES_HOME"

alias fpl="fab pull"

alias bsv="cd_save $BACKUPS_HOME"

alias bpl="cd_pull $BACKUPS_HOME"

alias lpl="cd_pull $LOCAL_HOME"

alias lsv="cd_save $LOCAL_HOME"

alias kel="knife environment list"

alias knl="knife node list"

alias kul="knife upload"

alias kud="knife upload databag"

alias kdl="knife download"

alias lst="cd_status $LOCAL_HOME"

alias vcr="vpn Cloudreach"

alias vdc="vpn_disconnect"


###############################################################################
# Git
###############################################################################
alias gau="git add -u"

alias gcdl="git ls-files --deleted | xargs git checkout"

alias gld="git log -p --topo-order --stat --pretty=format:\${_git_log_medium_format}"

alias gcam="git commit --amend -m"

alias grrn="git remote rename"

alias gacm="git add -u * && git add * && git commit -m"

alias grS="git reset"

alias grH="git reset HEAD"

alias gas="git add *"

alias gst="git status"

alias gSt="git stash"

alias grs="git remote show"

alias grso="git remote show origin"

alias gin="git init"

alias gRm="git rm -r --cached"

alias grm="git remote"

alias gbd="git branch develop && git checkout develop"

alias gbx="git branch -d"

alias gbm="git branch master && git checkout master	"

alias gch="git checkout"

alias gb="git branch"

alias gcmr="git submodule foreach 'git checkout master'"

alias gsf="git submodule foreach"

alias gpd="git push $DEFAULT_GIT_REMOTE develop"

alias gpm="git push $DEFAULT_GIT_REMOTE master"

alias gpld="git pull $DEFAULT_GIT_REMOTE develop"

alias gplm="git pull $DEFAULT_GIT_REMOTE master"

alias gcm="git checkout master"

alias gcd="git checkout develop"

alias ga="git add"

alias gsi="git submodule init"

alias gsu="git submodule update"

alias gsur="git submodule update --recursive"

alias gsI="git submodule update --init --recursive"

alias gsa="git submodule add"

alias cgm="cat .gitmodules"

alias gra="git remote add"

alias grs="git remote show"

alias grao="git remote add origin"

alias gpo="git push origin"

alias gpom="git push origin master"

alias gpg="git push github"

alias gplg="git pull github"

alias gpgm="git push github master"

alias gpbm="git push bitbucket master"

alias gplom="git pull $DEFAULT_GIT_REMOTE master"

alias gplgm="git pull github master"

alias gplbm="git pull bitbucket master"

alias gpod="git push $DEFAULT_GIT_REMOTE develop"

alias gplod="git pull $DEFAULT_GIT_REMOTE develop"

###############################################################################
# Rake
###############################################################################
alias rkg="rake -g"

alias rkrt="rake routes"

alias rki="rake install"

alias ccrn="rake_do cocos:run"

alias rkdp="rake_do rails:deploy"

alias rkde="rake_do git:deinit"

alias rkD="rake_do git:sub_deinit"

alias rkpl="rake_do git:pull"

alias rkp="rake_do git:push"


###############################################################################
# Files
###############################################################################
alias min="$EDITOR $DOTFILES_BASE_HOME/install.zsh"

alias chi="cat ~/.zhistory"

alias mhi="$EDITOR ~/.zhistory"

alias mdo="$EDITOR $LISTS_HOME/doit.zsh"

alias lsls="ls $LISTS_HOME"

alias lls="ls $LISTS_HOME"

alias csp="cat $LISTS_HOME/spacecraft.txt"

alias ctl="cat_list $TO_LEARN"

alias mtl="edit_list $TO_LEARN"

alias ctw="cat $LISTS_HOME/$TO_WATCH.txt"

alias mtw="$EDITOR $LISTS_HOME/$TO_WATCH.txt"

alias ctr="cat $LISTS_HOME/$TO_READ.txt"

alias mtr="$EDITOR $LISTS_HOME/$TO_READ.txt"

alias cjs="cat $LISTS_HOME/jobsites.txt"

alias mjs="$EDITOR $LISTS_HOME/jobsites.txt"

alias mtd="$EDITOR $LISTS_HOME/$TO_DO.txt"

alias ctd="cat $LISTS_HOME/$TO_DO.txt"

alias mref="edit_list refs"

alias cref="cat_list refs"

alias quotes="clist quotes"

alias mcol="$EDITOR $ZDOT_HOME/colors.zsh"

alias ocv="open -a OpenOffice $IMPORTANT_HOME/cv/cv.odt"

alias splq="$EDITOR $PROG_HOME/splunk/splunk_searches.txt"

alias regex="$RUBY_HOME/practice/regexp_operators.rb"

alias doit="$LISTS_HOME/doit.zsh"

alias mbrew="$EDITOR $BREWLIST"

alias cbrew="cat $BREWLIST"

alias gbrew="cat $BREWLIST | grep -i"

alias mpr="$EDITOR ~/.zsh.prompts/prompt_robin_setup.zsh"

alias cpr="cat ~/.zsh.prompts/prompt_robin_setup.zsh"

alias resource="source ~/.zshrc"

alias rs="resource"

alias rsen="source $ZDOT_HOME/env_variables.zsh"

alias rsop="source $ZDOT_HOME/options.zsh"

alias rsos="source $ZDOT_HOME/osx.zsh"

alias mssh="$EDITOR ~/.ssh/config"

alias mho="$EDITOR ~/.ssh/known_hosts"

alias mvrc="$EDITOR ~/.vimrc"

alias cvrc="cat ~/.vimrc"

alias mrvm="$EDITOR ~/.rvmrc"

alias mrvmrc="$EDITOR .rvmrc"

alias essh="edit ~/.ssh/config"

alias ess="edit ~/.ssh/config"

alias econf="edit ~/.ssh/config"

alias vzsh="vim ~/.zshrc"

alias mzsh="$EDITOR ~/.zshrc"

alias czsh="cat ~/.zshrc"

alias gzsh="cat ~/.zshrc | grep -i"

alias mzen="$EDITOR ~/.zshenv"

alias bmk="bookmark"

alias wbmk="work_bookmark"

alias mbk="m $BOOKMARKS_PATH"

alias cbk="cat $BOOKMARKS_PATH"

alias gbk="get_bookmark"

alias dbk="delete_bookmark"

alias rbk="rebookmark"

alias gbks="generate_all_bookmarks"

alias cbkal="cat $BOOKMARKS_ALIAS_PATH"

alias mbkal="m $BOOKMARKS_ALIAS_PATH"

alias mwbk="m $WORKBOOKMARKS_PATH"

alias cwbk="cat $WORKBOOKMARKS_PATH"

alias cwbkal="cat $WORKBOOKMARKS_ALIAS_PATH"

alias mwbkal="m $WORKBOOKMARKS_ALIAS_PATH"

alias edit=$EDITOR

alias caw="cat $AWS_CONFIG"

alias maw="$EDITOR $AWS_CONFIG"

alias erec="$EDITOR $RECORDS_PATH"

alias cms="edit $DOCS_HOME/commands.txt"

alias password="ruby $RUBY_HOME/projects/rbpassword/rbpassword.rb"

alias rnsall="cd $SCREENSHOTS_HOME && despace"

alias mal="$EDITOR $ZDOT_HOME/aliases.zsh"

alias mun="$EDITOR $ZDOT_HOME/unaliases.zsh"

alias mop="$EDITOR $ZDOT_HOME/options.zsh"

alias mos="$EDITOR $ZDOT_HOME/osx.zsh"

alias men="$EDITOR $ZDOT_HOME/env_variables.zsh"

alias mpa="$EDITOR $ZDOT_HOME/path.zsh"

alias mmutt="$EDITOR ~/.mutt/muttrc"

alias gl="git log"

alias t2="t22"

alias t3="t3389"

alias jl="jsonlint"

alias bcodes="cat $IMPORTANT_HOME/passwords/Backup-codes-robin.smith.txt"

alias gcl="git clone"

alias cmd="$EDITOR $TEMP_HOME/commands.txt"

alias window="open /Users/robinsmith/Dropbox/Camera\ Uploads/gif/window.gif"

alias cleantrash="sudo rm -rf ~/.Trash; mkdir ~/.Trash"

alias cgi="cat .gitignore"

alias x+="chmod +x"

alias x-="chmod -x"

alias chp="chmod +x"

alias chm="chmod -x"

alias kud="knife_upload_databag"

alias kne="knife node edit --editor vim"

alias kee="knife environment edit --editor vim"

alias fbs="fab save"

alias fcl="fab clean"

alias cgc="cat ~/.gitconfig"

alias mgc="$EDITOR ~/.gitconfig"

alias mrd="m README.md"

alias crd="cat README.md"

alias mrk="$EDITOR Rakefile"

alias crk="cat Rakefile"

alias mgf="$EDITOR Gemfile"

alias cgf="cat Gemfile"

alias mgfl="$EDITOR Gemfile.lock"

alias cgfl="cat Gemfile.lock"

alias mre="$EDITOR requirements.txt"

alias crq="cat requirements.txt"

alias mgi="$EDITOR .gitignore"

alias mgm="$EDITOR .gitmodules"

alias egi="$EDITOR .gitignore"

alias ecmd="$EDITOR $DOCS_HOME/commands.txt"

alias cmd="$EDITOR $DOCS_HOME/commands.txt"

alias e="print"

alias v=$VISUAL

alias sprog="du -dh $PROG_HOME"

alias spr="sprog"

alias sd="du -dh"

alias erk="edit rakefile"

alias rkct="rake count_all"

alias mkd="mkdir"

alias gclm="git clone -b master"

alias gclb="git clone -b "

alias cdrc="cd '$RECEIPTS_HOME'"

alias cdrp="cdrc"

alias c="cat"

alias pb="pbcopy"

alias erec="$EDITOR $IMPORTANT_HOME/records/record.txt"

alias mrec="$EDITOR $RECORDS_PATH"

alias mwr="$EDITOR $WORK_RECORDS_PATH"

alias crec="cat $RECORDS_PATH"

alias cwr="cat $WORK_RECORDS_PATH"

alias lahome="get_record la_home"

alias lawork="get_record la_work"

alias cardcredit="get_record rbc-credit"

alias cardhsbc="get_record hsbc-debit"

alias cardrbc="get_record rbc-debit"

alias mspnum="get_record msp_num"

alias mspaccount="get_record msp_account"

alias delta="get_record deltares"

alias docsec1="get_record docsec1"

alias docsec2="get_record docsec2"

alias docsec3="get_record docsecnott1"

alias docsec4="get_record docsecnott2"

alias docsec5="get_record docsecbald1"

alias rssaws="get_record rss-aws"

alias ad="address"

alias phonelong="get_record phone_long"

alias phoneshort="get_record phone_short"

alias phone="get_record phone"

alias phonef="get_record phone_formatted"

alias ph="phone"

alias phf="phone"

alias bank="get_record bank"

alias library="get_record library"

alias lib="library"

alias postcode="get_record home_postcode"

alias pc="postcode"

alias address="get_record home_address"

alias workaddress="get_record work_address"

alias workpostcode="get_record work_postcode"

alias residency="$ADOBE_PATH $CANADA_HOME/residency_form.pdf"

alias songs="cd $SONGS_HOME"

alias cdsongs="cd $SONGS_HOME"

alias sabihin="song sabihin_mo_na"

alias sb="sabihin"

alias skytrain="open $COMMON_DOCS_HOME/useful/vancouver_skytrain_map.pdf"

alias sky="skytrain"

alias tubemap="open $COMMON_DOCS_HOME/useful/tube_map.pdf"

alias pc="postcode"

alias ad="address"

alias ph="phone"

alias screenshots="cd $SCREENSHOTS_HOME"

alias lasts="cd $SCREENSHOTS_HOME && $LOCAL_HOME/bin/lastf -s $SCREENSHOT_NAME"

alias dels="cd $SCREENSHOTS_HOME && rm Screen*"


###############################################################################
# Functions
###############################################################################
alias sbr="set_browser"

alias bgr="background"

alias lsdir="ls_dirname"

alias sf="salesforce_search"

alias sfs="salesforce_search"

alias sfc="salesforce_class_search"

alias sfd="salesforce_developer_search"

alias sfm="salesforce_method_search"

alias sfo="salesforce_object_search"

alias bk="safari_books_search"

alias rp="source_repo"

alias olst="open \$(lastf)"

alias killp="kill_processes"

alias kps="kill_processes"

alias lps="list_processes"

alias pdf="print_default"

alias grec="get_record"

alias reminderrobin="reminder robin@mrrobinsmith.com"

alias reminderwork="reminder robin.smith@cloudreach.co.uk"

alias ssd="sudo_shutdown"

alias "ls*"="lss"

alias Cp="silent_cp"

alias rkd="rake_do"

alias gh="github"

alias bb="bitbucket"

alias ghu="github_user_search"

alias bbu="bitbucket_user_search"

alias grbk="grep_bookmarks"

alias cpy="copy"

alias olst="open \$(lastf)"

alias clst="cat \$(lastf)"

alias mlst="$EDITOR \$(lastf)"

alias mvls="mv \$(lastf)"

alias wk="wiki"

alias ggt="google_translate"

alias ggg="google_groups"

alias gg="google"

alias cls="cat_list"

alias mls="edit_list"

alias als="add_to_list"

alias glst="get_list_item"

alias grls="grep_list"

alias ols="open_list_item"

alias spacecraft="add_to_list spacecraft"

alias atr="add_to_list $TO_READ"

alias atl="add_to_list $TO_LEARN"

alias atw="add_to_list $TO_WATCH"

alias atc="add_to_list courses"

alias read="take $TO_READ"

alias watch="take $TO_WATCH"

alias learn="take $TO_LEARN"

alias help="add_to_list help"

alias ref="add_to_list refs"

alias shop="add_to_list shopping"

alias quote="add_to_list quotes"

alias jobs="add_to_list jobsites"

alias comp="add_to_list computer_science"

alias tls="take"

alias cdld="cd \$(lsltr | tail -1)"

alias dspdl="cd ~/Downloads; despace; cd - > /dev/null"

alias td="todo"

alias rld="reload"

alias gral="grep_all"

alias aof="green \$(alphabet_of_files)"

alias aofi="red \$(inverse_alphabet \$(alphabet_of_files))"

alias cof="count_of_files"

alias epb="printpb"

alias cpb="cat_copy"

alias enc="encrypt"

alias dec="decrypt"

alias een="edit_env"

alias ppe="pretty_print_env"

alias h="head"

alias t="tail"

alias dsp="despace"

alias bell="tput bel"

alias sto="setopt"

alias uns="unsetopt"

alias seg="set -o | grep"

alias ung="unsetopt | grep"

alias sws="switch_say"

alias swso="switch_say_override"

alias esws="print $SAYCMD"

alias eswso="print $SAYCMD_OVERRIDE"

alias swp="switch_python"

alias swr="switch_ruby"

alias brl="brew list"

alias b="browser"

alias killa="killp"

alias bkmk="bookmark"

alias wbkmk="work_bookmark"

alias rbdoc="rubydoc"

alias saveall="rake -g 'git:foreach[rake -g base:save]'"

alias lbf="libfind_s"

alias rfind="libfind_s $RUBY_HOME"

alias ofind="libfind_s $OCAML_HOME"

alias pfind="libfind_s $PYTHON_HOME"

alias lfind="libfind_s $LOCAL_HOME"

alias dfind="libfind_s $DOTFILES_HOME"

alias hfind="libfind_s $HTML_CSS_HOME"

alias jfind="libfind_s $JS_HOME"

alias npmfind="libfind_s $NPMLIB_HOME"

alias jvfind="libfind_s $JV_HOME"

alias cfind="libfind_s $C_HOME"

alias sfind="libfind_s $SH_HOME"

alias zfind="libfind_s $ZSH_HOME"

alias prfind="libfind_s $PROG_HOME"

alias afind="libfind_s $AWK_HOME"

alias zshfind="file_grep ~/.zshrc"

alias sshf="file_grep ~/.ssh/config"
