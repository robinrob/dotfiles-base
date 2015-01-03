# I favour using double quotes instead of single quotes for aliases, so that i
# can later do a find/replace to switch something out for an environment
# variable value.

###############################################################################
# Shell commands
###############################################################################
alias t="touch"

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

alias cre="crontab -e"

alias less='less -m -N -g -i -J --underline-special --SILENT'

alias more='less'

alias mkdir='mkdir -pv'

alias wh="which"

alias w="which"

alias chr="chrome"

alias lsl="ls -lL"

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


###############################################################################
# Shell command shortcuts
###############################################################################
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
# Installed applications/tools
###############################################################################
alias mvim="mvim -p"

alias sc="scala"

alias scc="scalac"

alias tran="trans :tl"

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

alias gimp="/Applications/GIMP.app/Contents/MacOS/GIMP-bin"

alias sublime="'/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl'"


###############################################################################
# Navigation
###############################################################################
alias cdlst="cd $LISTS_HOME"

alias cdzd="cd $ZDOT_HOME"

alias cdgg="cd ~/Google\ Drive"

alias cddocs="cd_dir $DOCS_HOME"

alias cdegr="/Users/msl/Programming/robin/sh/practice/egrep"

alias cdmr="cd_dir ${MRROBINSMITHCOM_HOME}-dev"

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

alias cdt="cd $TRASH_HOME"

alias cddr="cd ~/Google\ Drive"

alias cdk="cd_dir $KITCHENPLAN_HOME"

alias cddl="cd_dir ~/Downloads"

alias cdmv="cd_dir ~/Movies"

alias cdaws="cd_dir `dirname $AWS_CONFIG`"

alias cdm="cd_dir $JS_HOME/projects"

alias cdmb="cd_dir $JS_HOME/projects/mobile-app-cordova"

alias cdg="cd_dir $JS_HOME/projects/mobile-game-cocos"

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

alias pi="pip install -r requirements.txt"

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

alias rkr="rake routes"

alias rkst="rake_do git:sort_sub"

alias rk="rake"

alias rkg="rake -g"

alias rkjc="rake_do jekyll:clean"

alias gnb="gem install bundler && bundle install"

alias gib="gem install bundler"

alias gi="gem install"

alias bi="bundle install"

alias bu="bundle update"

alias save="rake -f $GLOBAL_RAKEFILE_HOME/Rakefile save_code"

alias rkrn="rake -g cocos:run"

alias rkd="rake_do rails:deploy"

alias rkde="rake_do git:deinit"

alias rkD="rake_do git:sub_deinit"

alias rkpl="rake_do git:pull"

alias rkp="rake_do git:push"

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

alias lfn="ls $FUNCS_HOME"

alias ctfn="ls $FUNCS_HOME | wc -l"

alias js="jekyll serve"

alias cdnoc="cd $WORK_HOME/ruby/cloudreach-chef/cloudreach-noc-chef"

alias cdms="cd $WORK_HOME/ruby/cloudreach-chef/cloudreach-ms-chef"

alias ccr="cocos run -p web"

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

alias lst="cd_status $LOCAL_HOME"

alias vcr="vpn Cloudreach"

alias vdc="vpn_disconnect"


###############################################################################
# Git
###############################################################################
alias grrn="git remote rename"

alias gacm="git add -u * && git add * && git commit -m"

alias grS="git reset"

alias grH="git reset HEAD"

alias gas="git add *"

alias gst="git status"

alias gSt="git stash"

alias grs="git remote show"

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
# Viewing and editing files
###############################################################################
alias ctl="cat $LISTS_HOME/tolearn.txt"

alias mtl="$EDITOR $LISTS_HOME/tolearn.txt"

alias ctw="cat $LISTS_HOME/towatch.txt"

alias csp="cat $LISTS_HOME/spacecraft.txt"

alias mtw="$EDITOR $LISTS_HOME/towatch.txt"

alias ctr="cat $LISTS_HOME/toread.txt"

alias mtr="$EDITOR $LISTS_HOME/toread.txt"

alias cjs="cat $LISTS_HOME/jobsites.txt"

alias mjs="$EDITOR $LISTS_HOME/jobsites.txt"

alias ctd="cat $LISTS_HOME/todo.txt"

alias mtd="$EDITOR $LISTS_HOME/todo.txt"

alias cref="cat $LISTS_HOME/references.txt"

alias mref="$EDITOR $LISTS_HOME/references.txt"

alias quotes="clist quotes"

alias mcol="$EDITOR $ZDOT_HOME/colors.zsh"

alias ocv="open -a OpenOffice $IMPORTANT_HOME/cv/cv.odt"

alias splq="$EDITOR $PROG_HOME/splunk/splunk_searches.txt"

alias regex="$RUBY_HOME/practice/regexp_operators.rb"

alias doit="$LISTS_HOME/doit.zsh"

alias mbrew="$EDITOR $DOTFILES_HOME/homebrew.txt"

alias cbrew="cat $DOTFILES_HOME/homebrew.txt"

alias mpr="$EDITOR ~/.zsh.prompts/prompt_robin_setup.zsh"

alias cpr="cat ~/.zsh.prompts/prompt_robin_setup.zsh"

alias resource="source ~/.zshrc"

alias rs="resource"

alias rsen="source $ZDOT_HOME/env_variables.zsh"

alias rsfn="source $ZDOT_HOME/functions.zsh"

alias rsf="source $ZDOT_HOME/functions.zsh"

alias rsop="source $ZDOT_HOME/options.zsh"

alias rsos="source $ZDOT_HOME/osx.zsh"

alias RS="source ~/.zshrc"

alias save="rake -f $GLOBAL_RAKEFILE_HOME/Rakefile save_code"

alias vconf="vim ~/.ssh/config"

alias mssh="$EDITOR ~/.ssh/config"

alias mvrc="$EDITOR ~/.vimrc"

alias cvrc="cat ~/.vimrc"

alias mrvm="$EDITOR ~/.rvmrc"

alias mrvmrc="$EDITOR .rvmrc"

alias mconf="mssh"

alias essh="edit ~/.ssh/config"

alias ess="edit ~/.ssh/config"

alias econf="edit ~/.ssh/config"

alias vzsh="vim ~/.zshrc"

alias mzsh="$EDITOR ~/.zshrc"

alias mzen="$EDITOR ~/.zshenv"

alias ezsh="edit ~/.zshrc"

alias ezs="ezsh"

alias czsh="cat ~/.zshrc"

alias bmk="bookmark"

alias wbmk="work_bookmark"

alias mbk="m $BOOKMARKS_PATH"

alias cbk="cat $BOOKMARKS_PATH"

alias cbkal="cat $BOOKMARKS_ALIAS_PATH"

alias mbkal="m $BOOKMARKS_ALIAS_PATH"

alias mwbk="m $WORKBOOKMARKS_PATH"

alias cwbk="cat $WORKBOOKMARKS_PATH"

alias cwbkal="cat $WORKBOOKMARKS_ALIAS_PATH"

alias edit=$EDITOR

alias conf="$EDITOR ~/.ssh/config"

alias maws="$EDITOR $AWS_CONFIG"

alias caws="cat $AWS_CONFIG"

alias eaws="$EDITOR $AWS_CONFIG"

alias reminderrobin="reminder robin@mrrobinsmith.com"

alias reminderwork="reminder robin.smith@cloudreach.co.uk"

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

alias emptytrash="sudo rm -rf ~/.Trash/*"

alias cgi="cat .gitignore"

alias x+="chmod +x"

alias x-="chmod -x"

alias chp="chmod +x"

alias chm="chmod -x"

alias kud="knife_upload_databag"

alias kne="knife node edit --editor vim"

alias kee="knife environment edit --editor vim"

alias rki="rake install"

alias fbs="fab save"

alias fcl="fab clean"

alias cgc="cat .git/config"

alias mgc="$EDITOR ~/.gitconfig"

alias mrd="m README.md"

alias crd="cat README.md"

alias mrk="$EDITOR Rakefile"

alias crk="cat Rakefile"

alias mgf="$EDITOR Gemfile"

alias cgf="cat Gemfile"

alias mgfl="$EDITOR Gemfile.lock"

alias cgfl="cat Gemfile.lock"

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

alias plane="copy_print NQFLIZ"

alias gclm="git clone -b master"

alias gclb="git clone -b "

alias cdrc="cd '$RECEIPTS_HOME'"

alias cdrp="cdrc"

alias c="cat"

alias pb="pbcopy"

alias erec="$EDITOR $IMPORTANT_HOME/records/record.txt"

alias mrec="$EDITOR $RECORDS_PATH"

alias crec="cat $RECORDS_PATH"

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

alias mobileideas="$EDITOR $MERCURY_HOME/creative/mobile/ideas.txt"

alias mi="mobileideas"

alias screenshots="cd $SCREENSHOTS_HOME"

alias lasts="cd $SCREENSHOTS_HOME && lastf -s $SCREENSHOT_NAME"

alias dels="cd $SCREENSHOTS_HOME && rm Screen*"



###############################################################################
# Functions
###############################################################################
alias dbk="delete_bookmark"

alias unbk="dbk"

alias ubk="dbk"

alias delbk="dbk"

alias spacecraft="add_to_list spacecraft"

alias toread="add_to_list toread"

alias learn="add_to_list tolearn"

alias watch="add_to_list watch"

alias ref="add_to_list references"

alias shop="add_to_list shopping"

alias quote="add_to_list quotes"

alias jobs="add_to_list jobsites"

alias comp="add_to_list computer_science"

alias read1="take1 toread"

alias watch1="take1 towatch"

alias grc='get_record'

alias td="todo"

alias rld="reload"

alias grf="grep_all"

alias aof="green \$(alphabet_of_files)"

alias aofi="red \$(inverse_alphabet_of_files)"

alias epb="printpb"

alias cap="cat_print"

alias enc="encrypt"

alias dec="decrypt"

alias een="edit_env"

alias ppe="pretty_print_env"

alias h="history"

alias dsp="despace"

alias grp="set -o | grep"

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

alias svc="save_code"

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
