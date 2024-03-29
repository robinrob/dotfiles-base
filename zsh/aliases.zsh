# I favour using double quotes instead of single quotes for aliases, so that i
# can later do a find/replace to switch something out for an environment
# variable value.

###############################################################################
# Shell commands
###############################################################################
alias pcregrep='pcregrep --color=auto'

alias rmrf="rm -rf"


alias cpx="chmod +x"

alias cmx="chmod -x"

alias age="stat -f '%m%t%Sm %N'"

alias p="print"

alias dal="delete_alias"

alias unaL="unalias_aliases"

alias timezones="sudo systemsetup -listtimezones"

alias dirs="dirs -v"

alias pz="print -z"

alias pp="print -P"

alias pr="print -r"

alias pl="print -l"

alias g="grep"

alias cwd="pwd"

alias dt="copy_print_eval \"gdate +'%Y-%m-%d %H:%M:%S.%6N'\""

alias crl="crontab -l"

alias more='less'

alias mkdir='mkdir -pv'

alias w="which_pro"

alias mw="edit_which"

alias lsn="/usr/local/bin/gls --color=none"

alias lsh="find_hidden"

alias lsl="ls -lL"

alias isgit="show_git"

alias isg="isgit"

alias igi="isgit"

alias shell="print $SHELL"


###############################################################################
# GNU commands
###############################################################################
alias glS="/usr/local/bin/gls"

alias date="gdate"

alias cp="nocorrect gcp -i"

alias kill="gkill"

alias mv="gmv"

alias egrep="gegrep"

alias grep="ggrep --text --color"

alias find="gfind"

# alias sed="gsed -r"

# alias gsed="gsed -r"

alias ls="/usr/local/bin/gls --color -1"

# alias cat="gcat"

alias sed="gsed"

alias awk="gawk"

alias head="ghead"

alias tail="gtail"


###############################################################################
# Shortcuts
###############################################################################
alias son="open /System/Library/PreferencePanes/Sound.prefPane"

alias cdlm="cd $HOME/Movies; cd_to_lastf"

alias frv="fix_ruby_version"

# alias history="history 0"

alias gn="git_number"

alias cdtr="cd ~/.Trash"

alias pomo="timer 25"

alias brk="timer 5"

alias brk2="timer 10"

alias meditate="timer 10"

alias odl="open $HOME/Downloads"

alias dt="date"

alias pyka="cd_pycharm $KAPTIO_HOME"

alias brexit="exit"

alias mapsn="maps -n"

alias llst="lastf"

alias mvlst="mv \$(lastf)"

alias pblst="ls \$(lastf) | pbcopy"

alias ki="kill_processes_by_name itunes"

alias kp="kill_processes_by_name photos"

alias ndv="node --version"

alias nvmv="nvm --version"

alias rmd="rmdir"

alias hi="history 0"



# alias sn="SwitchAudioSource -n"

alias recral="reload; recreate_all_repo_aliases"

alias limmy="tube \"limmy's show\""

alias obk="open_named_list_item books"

alias otl="open_named_list_item learn"

alias otw="open_named_list_item watch"

alias otr="open_named_list_item read"

alias dirp="dir | pbcopy && pbpaste"

alias libcode="grec libcode"

alias lsv="ls $HOME/VirtualBox\ VMs"

alias cdv="cd $HOME/VirtualBox\ VMs"

alias pg="rebookmark page"

alias viM="/usr/bin/vim"

alias wifi="grec wifi"

alias vlc="open -a VLC"

alias aud="open -a Audacity"

alias gar="open -a garageBand"

alias kcc="kill_processes_by_name cocos"

alias kbs="kill_processes_by_name browser-sync"

alias kid="kill_processes_by_name idea"

alias repals="rm repo_aliases.zsh; print_all_repo_aliases > repo_aliases.zsh; source_aliases"

alias science="rss science"

alias rsS=$RSS_HOME/rss.rb

alias ncp="no | cp"

alias ncP="no | sudo cp"

alias ycp="yes | cp"

alias sycp="yes | silent_cp"

alias ycP="yes | sudo cp"

alias sycP="yes | sudo silent_cp"

alias api="cocosapi"

alias lsw="ls | wc -l"

alias pwdp="copy_print \$(pwd)"

alias ssd="shutdown_system"

alias SSD="ssd"

alias ssr="restart_system"

alias SSR="ssr"


alias adbd="adb devices"

alias pag="ps aux | grep"

alias pyv="python --version"

alias apps="open /Applications"

alias bcd="nocorrect builtin cd"

alias sshkey="cat $HOME/.ssh/id_rsa.pub | pbcopy"

alias rkls="rake_do git:foreach nil"

alias rkss="rake_do git:sort_sub"

alias str="list_dirs_by_size ~/.Trash"

alias strash="list_dirs_by_size ~/.Trash"

alias sdtrash="list_dirs_by_size ~/.Trash"

alias sdr="du -dh $HOME/Dropbox"

alias syslog="tail -f /var/log/system.log"


###############################################################################
# Applications/tools
##############################################################################
alias pia="open -a Private\ Internet\ Access"

alias vb="open -a VirtualBox"

alias music="open -a MusicHarbor"

alias wa="open -a WhatsApp"

alias key="open -a Keychain\ Access"

alias xld="open -a XLD"

alias app="open -a App\ Store"

alias pre="open -a Preview"

alias qb="open -a Qbittorrent"

alias hl="open -a Half-Life"

# alias hl2="open -a Half-Life 2"

alias tel="open -a Telegram"

alias num="open -a Numbers"

alias sn="open -a Sonos"

alias n="open -a Notes"

alias notes="open -a Notes"

alias todo="open -a Microsoft\ To\ Do"

alias wch="open_weechat"

alias rb="open_app RubyMine"

alias we="open_app webStorm"

alias ev="open_app Evernote"

alias di="open_app Discord"

alias ap="open_app 'appleScript Editor'"

# alias xc="xcode"

alias xc="open_app Xcode-beta"

alias cle="open -a Clementine"

alias st="open -a sourceTree"

alias vs="open_app 'Visual Studio Code'"

alias at="open_app 'Atom'"

alias hk="heroku"

alias hc="open -a Hipchat"

alias golf="open -a 'Golf With Your Friends'"

alias ra="open -a OpenRA"

alias rl="open -a 'Rocket League'"

alias l4d="open -a 'Left 4 Dead 2'"


alias ssl="open -a 'shellShock Live'"

alias mu="open -a Music"

alias pod="open -a Podcasts"

alias quick="open -a 'Quicktime Player'"

alias til="open -a Tiled"

alias act="open -a 'Activity Monitor'"

alias skype="open -a Skype"

alias war="open -a 'War Thunder'"


alias clm="open -a Clementime"

alias py="python"

alias py3="python3"

alias oct="octave"

alias b2d="boot2docker"

alias vbm="VBoxManage"

alias office="open -a OpenOffice"

# alias pix="open -a Pixelmator"

alias cpp="copy_print"

alias screensaver="sudo open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app"

alias scr="sudo open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app"

alias spotify="open -a Spotify"

alias spo="spotify"

alias scc="scalac"

alias lessc="$LESSC_PATH"

alias lc="lessc"

alias firefoxp="/Applications/Firefox.app/Contents/MacOS/firefox-bin -p"

alias ffp="firefoxp"

alias firefoxr="/Applications/Firefox.app/Contents/MacOS/firefox-bin -p Robin &"

alias ffr="firefoxr"

alias firefoxc="/Applications/Firefox.app/Contents/MacOS/firefox-bin -p Cloudreach &"

alias ffc="firefoxc"

alias adobe="$ADOBE_PATH"

alias m="$EDITOR"

# alias e="$EDITOR"

# alias v="$VISUAL"


###############################################################################
# Navigation
###############################################################################

alias cdpod="cd_down_tree $HOME/Google\ Drive/podcast"

alias cdchoir="cd $SINGING_HOME/choir"

alias cddl="cd $HOME/Downloads"

alias cdstr="cd $HOME/Movies/Star-Trek-Voyager-Season-3"

alias cdst="cd $STORIES_HOME"

alias cdcel="cd /usr/local/Cellar"

alias cdoct="cd $OCTAVE_HOME"

alias cdang="cd $JS_HOME/practice/angular-blog"

alias cdnpm="cd $NPMLIB_HOME"

alias cdaP="cd_down_tree /Applications"

alias cdim="cd_down_tree $IMPORTANT_HOME"

alias cdcl="cd_down_tree /usr/local/Cellar"

alias cdts="cd_down_tree $JS_TESTS_HOME/src"


alias cdmw="cd_down_tree $COCOS_HOME/samples/js-moonwarriors"

alias cdpk="cdff"

alias cdlb="cd_down_tree /usr/local/Library"

alias cdcc="cd_down_tree $COCOS_HOME"

alias cdccl="cd_down_tree $COCOS_LITE_HOME"

alias cdph="cd_down_tree \$PHOTOS_HOME"

alias cdssh="cd_down_tree $HOME/.ssh/"

alias cdscre="cd_down_tree $SCREENSAVERS_HOME"

alias cdbg="cd_down_tree $BACKGROUNDS_HOME"

alias cdsp="cd_down_tree $SPRITES_HOME"

alias cdsn="cd_down_tree $SOUNDS_HOME"


alias cdlst="cd_down_tree $LISTS_HOME"

alias cdls="cd_down_tree $LISTS_HOME"

alias cdzd="cd_down_tree $ZDOT_HOME"

alias cdgg="cd_down_tree $HOME/Google\ Drive"

alias cdsinging="cd $SINGING_HOME"


alias cddc="cd_down_tree $DOCS_HOME"

alias cdcr="cd_down_tree $CRASH_REPORTS_HOME"

alias screenshots="cd_down_tree $SCREENSHOTS_HOME"

alias lasts="cd_down_tree $SCREENSHOTS_HOME && $LOCAL_HOME/bin/lastf -s $SCREENSHOT_NAME"

alias dels="cd_down_tree $SCREENSHOTS_HOME && rm Screen*"

alias cdegr="/Users/msl/Programming/robin/sh/practice/egrep"

alias cdsf="cd_down_tree $RUBY_HOME/projects/salesforce-blog"

alias cdmrp="cd_down_tree $WORK_HOME/java/br-reportapp"

alias cdbp="cd_down_tree $MRROBINSMITHCOM_HOME/public/blogposts"

alias cdgp="cd_down_tree $GULPFILE_HOME"

alias cdrk="cd_down_tree $RAKELIB"

alias cdw="cd_down_tree $WORK_HOME"

alias cdwr="cd_down_tree $WORK_RUBY_HOME"

alias cdwp="cd_down_tree $WORK_PYTHON_HOME"

alias cdrecipe="cd_down_tree $HTMLCSS_HOME/projects/recipe-finder"

alias cdsed="cd_down_tree $SH_HOME/practice/sed"

alias cdscr="cd_down_tree $SCREENSHOTS_HOME"

alias cdbspr="cd_down_tree $CSS_HOME/practice/bootstrap"

alias cdjqpr="cd_down_tree $JS_HOME/practice/jquery"



alias cdtr="cd_down_tree $TRASH_HOME"

alias cddr="cd_down_tree $HOME/Dropbox"

alias cdk="cd_down_tree $KITCHENPLAN_HOME"

alias cddoc="cd_down_tree $HOME/Documents"

alias cdmu="cd_down_tree $HOME/Music"

alias cdpic="cd_down_tree $HOME/Pictures"

alias cdopt="cd_down_tree $HOME/Documents/options"

alias cdmv="cd_down_tree $HOME/Movies"

alias cdbk="cd_down_tree $HOME/Books"

alias cdaws="cd_down_tree `dirname $AWS_CONFIG`"

alias cdm="cd_down_tree $JS_HOME/projects"

alias cdmb="cd_down_tree $JS_HOME/projects/mobile-app-cordova"


alias cdexp="cd $EXPENSES_HOME"

alias cdrec="cd_down_tree $(dirname $RECORDS_PATH)"

alias cdlists="cd_down_tree $LISTS_HOME"


###############################################################################
# Development operations
###############################################################################
alias gpp="gulp protractor"

alias gpk="gulp karma"

alias gpt="gulp test"

alias gpts="gulp test-server"

alias ven="virtualenv"

# alias ut="utop"

alias cdfn="cd_down_tree $FUNCS_HOME"

alias jk="jekyll"

alias jkb="jekyll build --watch"

alias pbi="pythonbrew install"

alias pbu="pythonbrew uninstall"

alias pbu="pythonbrew use"

alias pbl="pythonbrew list"

alias crv="cat .ruby-version"

alias crg="cat .ruby-gemset"

alias rgfl="rm Gemfile.lock"

alias gib="gem install bundler"

alias rbu="rbenv_use"

alias rgn="gemset_new"

alias rsc="rails console"

alias gnb="gem install bundler && bundle install"

alias gib="gem install bundler"

alias gi="gem install"

alias gu="gem uninstall"

alias bi="bundle install"

alias bl="bundle list"

alias bu="bundle update"

alias nl="sudo npm link"

alias ni="sudo npm install"

alias nu="sudo npm uninstall"

alias yn="yarn"

alias yi="yarn install"

alias yga="yarn global add"

alias ygr="yarn global remove"

alias ya="yarn add"

alias yr="yarn remove"

alias yup="yarn upgrade"

alias nr="npm_reinstall"

alias nin="npm init"

alias nis="npm_install_save"

alias nig="sudo npm install -g"

alias nug="sudo npm uninstall -g"

alias nsh="npm shrinkwrap --dev"

alias bo="bower"

alias boi="bower_install_save"

alias bou="bower uninstall"

alias nt="nosetests"

alias pi="pip_install"

alias pfr="pip freeze"

alias pu="sudo pip uninstall"

alias p3i="pip3_install"

alias p3u="sudo pip3 uninstall"

alias vi="vagrant init"

alias vu="vagrant up"

alias vh="vagrant halt"

# alias vs="vagrant status"

alias vpr="vagrant reload --provision"

alias vd="vagrant destroy"

alias vssh="vagrant_ssh"

alias dcu="docker-compose up"

alias npmgls="npm config set json; npm -g list --depth=0"

alias npmls="npm config set json; npm list --depth=0"

alias apnew="new_s osascript scpt"

alias anew="new_s awk awk"

alias pnew="new_s python3 py"

alias rnew="new_s ruby rb"

alias bnew="new_s bash sh"

alias snew="new_s sh sh"

alias plnew="new_s perl pl"

alias swnew="new_s swift swift"

alias onew="new_s ocaml ml"

alias znew="new_s zsh zsh"

alias fnew="new_s fish fish"

alias lnew="lodash_new"

alias nnew="new_s node js"

alias demo="open $MOBILEAPP_HOME/www/index.html"

alias up2="pythonbrew use 2.7"

alias up3="pythonbrew use 3.2"

alias p2="$HOME/.pythonbrew/pythons/Python-2.7/bin/python"

alias p3="$HOME/.pythonbrew/pythons/Python-3.2/bin/python3"

alias pbrew="pythonbrew"

alias cals="cat $ALIASES_PATH"

alias lfn="lsfn"

alias ctfn="ls $FUNCS_HOME | wc -l"

alias wcfn="wc -l $FUNCS_HOME/*"

alias grfn="grep_functions"

alias cdnoc="cd_down_tree $WORK_HOME/ruby/cloudreach-chef/cloudreach-noc-chef"


alias cc="cocos compile"

alias ccw="cocos compile -p web"

alias cca="cocos compile -p android"

alias cda="cocos deploy -p android"

alias ccr="cocos run -p android"

alias cci="cocos compile -p ios"

alias cdi="cocos deploy -p ios"

alias ccl="logcat-color cocos"

alias ccn="cocos new -l js"

alias sv="cd_save"

alias fpl="fab pull"

alias kel="knife environment list"

alias knl="knife node list"

alias kul="knife upload"

alias kud="knife upload databag"


alias vpnd="vpn -q"

###############################################################################
# Git
###############################################################################
alias gS="git status"

alias gs="git_number"

alias gig="git_ignore"

alias gd="git_number diff"

alias ga="git_number add"

alias gch="git_number checkout"

alias grS="git reset"

alias glu="git_ls_untracked_files"

alias gchp="git cherry-pick"

alias hpr="hub_pull_request"

alias grss="git reset --soft"

alias gag="git add .gitignore"

# alias gar="git add README.md"

alias grb="git rebase"

alias gsd="git submodule deinit"

alias grbc="git rebase --continue"

alias gco="git_config"

alias gcog="git_config_global"

alias glsf="git ls-files "

alias gau="git add -u"

alias gld="git log -p --topo-order --stat --pretty=format:\${_git_log_medium_format}"

alias grrn="git remote rename"

alias gacm="git add -u * && git add * && git commit -m"

alias grsh="git reset head"

alias gas="git add *"

alias gst="git status"

alias gSt="git stash"

alias grs="git remote show"

alias grso="git remote show origin"

alias gin="git init"

alias grm="git rm -r --cached"

alias gre="git remote"

alias gbd="git branch -d"

alias gbD="git branch -D"

alias gbm="git branch master && git checkout master	"

alias gb="git branch"


alias gsf="git submodule foreach"

alias gpd="git push $DEFAULT_GIT_REMOTE develop"

alias gpm="git push $DEFAULT_GIT_REMOTE master"

alias gpld="git pull $DEFAULT_GIT_REMOTE develop"

alias gplm="git pull $DEFAULT_GIT_REMOTE master"

alias gcm="git checkout master"

alias gcd="git checkout develop"

alias gsi="git submodule init"

alias gsu="git submodule update"

alias gsui="git submodule update --init"

alias gsur="git submodule update --init --recursive"

alias gsI="git submodule update --init --recursive"

alias gsa="git submodule add"

alias cgm="cat .gitmodules"

alias gra="git remote add"

alias grs="git remote show"

alias grao="git remote add origin"

alias grrm="git remote rm"

alias grrmo="git remote rm origin"

alias gplo="git pull origin"

alias gpom="git push origin master"

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
alias rkser="rake_do rails:server"

alias rls="rails server"

alias rkm="rake_do db:migrate"

alias rkt="rake_do test"


alias rk="rake"

alias rkjc="rake_do jekyll:clean"

alias rkd="rake_do"

alias rkg="rake -g"

alias rkrt="rake routes"

alias rki="rake install"

alias ccrn="rake_do cocos:run"

alias rkdp="rake_do rails:deploy"

alias rkde="rake_git_deinit"

alias rkD="rake_do git:sub_deinit"

alias rkpl="rake_do git:pull"

alias rkp="rake_do git:push"


###############################################################################
# Files
###############################################################################
alias coct="cat $HOME/.octaverc"

alias moct="$EDITOR $HOME/.octaverc"

alias mand="$EDITOR frameworks/runtime-src/proj.android/AndroidManifest.xml"

alias min="$EDITOR $DOTFILES_BASE_HOME/install.zsh"

alias chi="cat $HOME/.zhistory"

alias mhi="$EDITOR $HOME/.zhistory"

alias mdo="$EDITOR $LISTS_HOME/doit.zsh"

alias csp="cat $LISTS_HOME/spacecraft.txt"

alias ctl="cat_named_list $TO_LEARN"

alias mtl="edit_named_list $TO_LEARN"

alias ctw="cat_named_list watch"

alias mtw="edit_named_list watch"

alias ctr="cat_named_list read"

alias mtr="edit_named_list read"



alias mtd="$EDITOR $LISTS_HOME/$TO_DO.txt"

alias ctd="cat $LISTS_HOME/$TO_DO.txt"

alias mref="edit_named_list refs"

alias cref="cat_named_list refs"

alias quotes="clist quotes"

alias mcol="$EDITOR $ZDOT_HOME/colors.zsh"

alias ocv="open -a OpenOffice $IMPORTANT_HOME/cv/cv.odt"


alias regex="$RUBY_HOME/practice/regexp_operators.rb"

alias doit="$LISTS_HOME/doit.zsh"

alias mbrew="$EDITOR $BREWLIST"

alias cbrew="cat $BREWLIST"

alias gbrew="cat $BREWLIST | grep -i"

alias mpr="$EDITOR $HOME/.zsh.prompts/prompt_robin_setup.zsh"

alias cpr="cat $HOME/.zsh.prompts/prompt_robin_setup.zsh"

alias rs="resource"

alias rsen="source $ZDOT_HOME/env_variables.zsh"

alias rsop="source $ZDOT_HOME/options.zsh"

alias rsos="source $ZDOT_HOME/osx.zsh"

alias mssh="$EDITOR $HOME/.ssh/config"

alias mkh="$EDITOR $HOME/.ssh/known_hosts"

alias mvrc="$EDITOR $HOME/.vimrc"

alias mgrc="$EDITOR $HOME/.gimprc"

alias cvrc="cat $HOME/.vimrc"

alias essh="edit $HOME/.ssh/config"

alias cssh="cat $HOME/.ssh/config"

alias econf="edit $HOME/.ssh/config"

alias vzsh="vim $HOME/.zshrc"

alias mzsh="$EDITOR $HOME/.zshrc"

alias czsh="cat $HOME/.zshrc"

alias gzsh="cat $HOME/.zshrc | grep -i"

alias mzen="$EDITOR $HOME/.zshenv"

alias mbash="$EDITOR $HOME/.bashrc"

alias bmk="bookmark"

alias wbmk="work_bookmark"

alias abk="add_book"

alias mbk="m $BOOKMARKS_PATH"

alias cbk="cat $BOOKMARKS_PATH"

alias gbk="get_bookmark"

alias dbk="delete_bookmark"

alias rbk="rebookmark"

alias gbks="generate_all_bookmarks quiet"

alias cbkal="cat $BOOKMARKS_ALIAS_PATH"

alias mbkal="m $BOOKMARKS_ALIAS_PATH"

alias mwbk="m $WORKBOOKMARKS_PATH"

alias cwbk="cat $WORKBOOKMARKS_PATH"

alias cwbkal="cat $WORKBOOKMARKS_ALIAS_PATH"

alias mwbkal="m $WORKBOOKMARKS_ALIAS_PATH"

alias caw="cat $AWS_CONFIG"

alias maw="$EDITOR $AWS_CONFIG"

alias erec="$EDITOR $RECORDS_PATH"


alias password="ruby $RUBY_HOME/projects/rbpassword/rbpassword.rb"

alias rnsall="cd_down_tree $SCREENSHOTS_HOME && despace"

alias mal="edit_alias"

alias mun="$EDITOR $ZDOT_HOME/unaliases.zsh"

alias cal="cat $ALIASES_PATH"

alias mun="$EDITOR $ZDOT_HOME/unaliases.zsh"

alias cun="cun $ZDOT_HOME/unaliases.zsh"

alias mop="$EDITOR $ZDOT_HOME/options.zsh"

alias cop="cat $ZDOT_HOME/options.zsh"

alias mos="$EDITOR $ZDOT_HOME/osx_defaults_robin.zsh"

alias cos="cat $ZDOT_HOME/osx.zsh"

alias men="$EDITOR $ZDOT_HOME/env_variables.zsh"

alias cen="cat $ENVS_PATH"

alias mpa="$EDITOR $ZDOT_HOME/path.zsh"

alias cpa="cat $ZDOT_HOME/path.zsh"

alias mmutt="$EDITOR $HOME/.mutt/muttrc"

alias gl="git log"

alias t2="t22"

alias t3="t3389"

alias jl="jsonlint"

alias bcodes="cat $IMPORTANT_HOME/passwords/Backup-codes-robin.smith.txt"

alias cmd="$EDITOR $TEMP_HOME/commands.txt"

alias window="open /Users/robinsmith/Dropbox/Camera\ Uploads/gif/window.gif"

alias cleantrash="sudo rm -rf $HOME/.Trash; mkdir $HOME/.Trash"

alias cleandl="clean_directory $HOME/Downloads"

alias cgi="cat .gitignore"

alias kud="knife_upload_databag"

alias kne="knife node edit --$EDITOR vim"

alias kee="knife environment edit --$EDITOR vim"

alias fbs="fab save"

alias fcl="fab clean"

alias cgc="cat \$(get_git_config)"

alias cgC="cat $HOME/.gitconfig"

alias mgc="$EDITOR .git/config"

alias mgC="$EDITOR $HOME/.gitconfig"

alias mrd="m README.md"

alias crd="cat README.md"

alias mrk="$EDITOR Rakefile"

alias crk="cat Rakefile"

alias mgf="$EDITOR Gemfile"

alias mgp="$EDITOR gulpfile.js"

alias cgf="cat Gemfile"

alias mgfl="$EDITOR Gemfile.lock"

alias cgfl="cat Gemfile.lock"

alias mre="$EDITOR requirements.txt"

alias mgi="$EDITOR .gitignore"

alias mgm="$EDITOR .gitmodules"

alias egi="$EDITOR .gitignore"

alias ecmd="$EDITOR $DOCS_HOME/commands.txt"

alias cmd="$EDITOR $DOCS_HOME/commands.txt"

alias sprog="du -dh $PROG_HOME"

alias spr="sprog"

alias erk="edit rakefile"

alias rkct="rake count_all"

alias mkd="mkdir"

alias gcl="git clone"

alias gclm="git clone -b master"

alias gclb="git clone -b "

alias cdrc="cd '$RECEIPTS_HOME'"

alias cdrp="cdrc"

alias c="cat"

alias pb="pbcopy"

alias erec="$EDITOR $IMPORTANT_HOME/records/record.txt"

alias arec="add_list_item $RECORDS_PATH"

alias drec="delete_list_item $RECORDS_PATH"

alias mrec="$EDITOR $RECORDS_PATH"

alias mwr="$EDITOR $WORK_RECORDS_PATH"

alias crec="cat $RECORDS_PATH"

alias grrec="grep_list $RECORDS_PATH"


alias lahome="get_record la_home"

alias lawork="get_record la_work"

alias cardmon="get_record monzo-debit"

alias mspnum="get_record msp_num"

alias mspaccount="get_record msp_account"

alias delta="get_record deltares"

alias docsec1="get_record docsec1"

alias docsec2="get_record docsec2"

alias docsec3="get_record docsecnott1"

alias docsec4="get_record docsecnott2"

alias docsec5="get_record docsecbald1"

alias rssaws="get_record rss-aws"

alias phonelong="get_record phonelong"

alias phoneshort="get_record phonecompact"

alias phone="get_record phone"

alias ph="phone"

alias phs="phoneshort"

alias reg="get_record car-reg"

alias pH="get_record phonecompacb"

alias bank="get_record bank"

alias postcode="get_record home_postcode"

alias em="get_record email"

alias em2="get_record email2"

alias em3="get_record email3"

alias emw="get_record emailwork"

alias ad="get_record home_address"

alias pc="get_record home_postcode"

alias ws="get_record website"

alias in="get_record linkedin"

alias tw="get_record twitter"

alias workpostcode="get_record work_postcode"

alias residency="$ADOBE_PATH $CANADA_HOME/residency_form.pdf"


alias sabihin="song sabihin_mo_na"

alias sb="sabihin"

alias skytrain="open $COMMON_DOCS_HOME/useful/vancouver_skytrain_map.pdf"

alias tubemap="open $COMMON_DOCS_HOME/useful/tube_map.pdf"

###############################################################################
# Scripts
###############################################################################


###############################################################################
# Functions
###############################################################################
alias mapS="maps_basic"

alias tornado="search_tornado"

alias torn="search_tornado"

alias urban="search_urbandictionary"

alias thought="search_thoughtmaybe"

alias wpe="watts_per_electricity_cost"

alias ele="electricity_cost"


alias pla="search_plants"

alias winnersh="search_winnersh"

alias wed="when_medication"

alias ged="get_medication_date"

alias reddit="search_reddit"

alias redd="search_reddit"

alias sub="search_subtitles"

alias omag="open_copied_magnet_link"

alias npod="new_podcast"

alias torrent="search_torrents"

alias trs="translate_slovenian"

alias tre="translate_french"

alias trf="translate_french"

alias tri="translate_italian"

alias trg="translate_german"

alias trp="translate_portuguese"

alias pho="search_google_photos"

alias mtm="move_to_music"

alias screw="search_screwfix"

alias diy="search_bandq"

alias bnq="search_bandq"

alias mots="chercher_words"

alias rim="chercher_rimes"

alias thes="search_thesaurus"

alias words="scrabble_words"

alias wcp="word_count_pro"

alias dic="search_wiktionary"

alias apod="search_apod"

alias sto="search_stock_images"

alias syn="chercher_synonymes"

alias rhy="search_rhymes"

alias sign="search_signs"

alias gif="search_gifs"

alias con="search_conjugaisons"

alias emo="search_emoji"

alias pafon="pafon_counter"

alias nvu="nvm_use"

alias nunv="nvm_use_node_version"

alias csnew="css_new"

alias o="open_something"

alias linked="search_linked_in"

alias lsa="ls_absolute"

alias sp="spellcheck"

alias spb="spellcheck_blog"

alias spbp="spellcheck_blog_pro"

alias spp="spellcheck_pro"

alias spi="spellcheck_ignore"

alias spid="spellcheck_delete_ignore"

alias cspi="cat $SPELLCHECK_IGNORES"

alias mspi="$EDITOR $SPELLCHECK_IGNORES"

alias spf="spellcheck_fix"

alias rmgU="rm_git_untracked_files"

alias dict="/usr/local/bin/dict"

# alias dic="dicsaurus"

# alias thes="dicsaurus -t"

alias gchord="search_guitar_chord"

alias swdoc="search_ios_doc"


alias hp="hub_pull_request"

alias cdl="cd_to_lastf"

alias sd="list_dirs_by_size"

alias glc="git_diff_commits"

alias gdc="git_diff_commits"

alias oo="open_option"

alias sl="slack"

alias chars="print_chars"

alias kpr="kill_processes_by_name"

alias ca="open -a Calendar"

alias ma="gmail"

alias co="google_contacts"

alias dirs="directions"

alias hn="search_hacker_news"

alias tree="repo_tree"

alias kpl="kill_port_listeners"

alias lpl="list_port_listeners"

alias trN="translate -r"

alias trn="translate"

alias tra="translate"

alias ci="circle_ci"

# alias gig="git_ignore"

alias gigd="git_ignore_delete"

alias gdg="git diff .gitignore"

alias clst="cat_last_file"

alias hlst="head_last_file"

alias trans="translate"

alias gcnt="git_contributions"

alias grh="grep_history"

alias rt="run_and_tail"

alias rr="reload_run"

alias rbdoc="search_ruby_doc"

alias lsfn="ls_function"

alias alc="search_sqlalchemy_doc"

alias grgm="grep_gitmodules"

alias op="browse opera"

alias sf="browse safari"

alias ff="browse firefox"

alias ch="browse chrome"

alias to="browse tor"

alias amz="search_amazon"

alias amzc="search_amazon_com"

alias nnb="nos_new_bug"

alias nnf="nos_new_feature"

alias gpo="git_push_origin"

alias gpof="git_push_origin_force"

alias gpot="git_push_origin_tags"

alias gpl="git_pull_branch"

alias gplo="git_pull_origin_branch"

alias wal="which_resolve_alias"

alias ral="resolve_alias"

alias icon="glyphicon_search"

alias glyph="glyphicon_search"

alias link="link_script"



alias adbr="adb_restart"

alias logj="log_js"

alias logjo="log_js_object"

alias logjv="log_js_variable"

alias logjt="log_js_type"

alias logc="log_cocos"

alias logcv="log_cocos_variable"

alias logco="log_cocos_object"

alias logp="log_python"

alias logpv="log_python_var"

alias logp3v="log_python_3_var"

alias logp3o="log_python_3_object"

alias logpo="log_python_object"

alias logr="log_ruby"

alias logrv="log_ruby_var"

alias logz="log_zsh"

alias logzv="log_zsh_var"

alias logs="log_sh"

alias logsv="log_sh_var"

alias logav="log_apex_var"

alias logsw="log_swift"

alias logswv="log_swift_var"

alias logod="log_ocaml_var d"

alias logos="log_ocaml_var s"

alias logob="log_ocaml_var B"


alias loggd="log_go_var d"

alias loggs="log_go_var s"

alias loggb="log_go_var t"

alias loggf="log_go_var f"

alias logjava="log_java"

alias logjvv="log_java_var"

alias lod="lodash_doc_search"

alias lod="lodash_doc_search"

alias sains="search_sainsburys"

alias asda="search_asda"

alias wait="search_waitrose"

alias morr="search_morrisons"

alias tesc="search_tesco"

alias ebay="search_ebay"


alias gbch="git_branch_checkout"

alias gbn="git_branch_checkout"

alias it="iterm"

alias itt="iterm_iterm"

alias sad="start_angular_dev"

alias gpd="gulp_deploy"

alias lin="linkedin_search"

alias tof="to_fahrenheit"

alias toc="to_celcius"

alias rks="rake_save"

alias rkcl="rake_clean"

alias zaz="zazzle"


alias mva="move_to_applications"

alias lS="ls_sort_by_size"

alias toh="to_haml"

alias tot="to_html"

alias id="idea"

alias ic="open_app \"$INTELLIJ_COMMUNITY\""

alias we="open_app $WEBSTORM"

alias rb="open_app RubyMine"

alias pych="pycharm"

alias lo="localhost_browse"

alias lom="localhost_browse_edit"

alias jqdoc="jquery_doc_search"

alias jqudoc="jquery_doc_search"

alias judoc="jquery_ui_doc_search"

alias mo="edit_open"

alias rex="regex_lookup"

alias fr="find_recursive"

alias del="trash"

alias repoal="recreate_all_repo_aliases"

alias cdt="cd_to_file"

alias dd="duckduckgo"

alias gr="grep_recursive_insensitive"

alias gR="grep_recursive -g"

alias sedall="sed_all"

alias jks="jekyll_serve"

alias yell="yell_search"

alias yellm="yell_map_search"

alias yelp="search_yelp"

alias phys="physics_forums_search"

alias clc="calc"

alias cr="cat_run"

alias cbs="browser_sync_cocos"

alias lrl="livereload"

alias ccrf="cocos_class_rename"

alias mvf="move_force"

alias gsap="git_submodule_add_project"

alias clf="clean_files"

alias dtsv="dotfiles_save"

alias olst="open_last_modified_file"

alias oldl="open_last_modified_file $HOME/Downloads"

alias hmrec="salesforce_record eu1"

alias rsal="source_aliases"

alias rsaL="resource_aliases"

alias phon="phonetic"

alias swd="start_website_dev"

alias scd="start_cocos_dev"

alias std="start_game_dev"

alias enD="end_dev"

alias wpb="which_pbcopy"

alias mvt="move_tags"

alias mfn="edit_function"

alias hpb="head_pbcopy"

alias cleanhome="clean_home $HOME"

alias cleanfiles="clean_files"

alias 80="repeat_string 80 -"

alias rps="repeat_string"

alias colorc="color_using_code"

alias grc="grep_color"

alias sbr="set_browser"

alias bgr="background"

alias lsdir="ls_dirname"

alias sfc="salesforce_class_search"

alias sfd="salesforce_developer_search"

alias sfm="salesforce_method_search"

alias sfo="salesforce_object_search"

alias bk="safari_books_search"

alias pulls="repo_pull_requests"

alias rp="open_source_repo_path"

alias kps="kill_processes_by_name"

alias die="kps"

alias grp="grep_processes"

alias lps="list_processes"

alias pdf="print_default"

alias grec="get_record"

alias reminderwork="reminder robin.smith@cloudreach.co.uk"

alias Cp="silent_cp"

alias gh="github"

alias bb="bitbucket"

alias ghu="github_user_search"

alias bbu="bitbucket_user_search"

alias grbk="grep_bookmarks"

alias cpy="copy"

alias mlst="olst $EDITOR"

alias wk="wiki"

alias ggt="google_translate"

alias ggg="google_groups"

alias gg="search_google"

alias cn="canary"

alias cn="canary"

alias im="google_images"

alias ly="lyrics_search"

alias tabs="tabs_search"

alias cls="cat_named_list"

alias mls="edit_named_list"

alias als="add_named_list_item"

alias aLs="add_list_item"

alias dls="delete_named_list_item"

alias dLs="delete_list_item"

alias nls="new_list"

alias rmls="remove_list"

alias glst="get_named_list_item"

alias grls="grep_named_list"

alias ols="open_named_list_item"

alias lsls="ls_list"

alias lls="ls_list"

alias spacecraft="add_named_list_item spacecraft"

alias atd="add_named_list_item $TO_DO"

alias atr="add_named_list_item $TO_READ"

alias atl="add_named_list_item $TO_LEARN"

alias atw="add_named_list_item $TO_WATCH"

alias ctt="cat_named_list thoughts"

alias mtt="edit_named_list thoughts"

alias att="add_thought"

alias dtt="delete_named_list_item thoughts"

alias atc="add_named_list_item courses"

alias read1="take $TO_READ"

alias watch="take $TO_WATCH"

alias learn="take $TO_LEARN"

alias help="add_named_list_item help"

alias ref="add_named_list_item refs"

alias quote="add_named_list_item quotes"

alias jobs="add_named_list_item jobs"

alias comp="add_named_list_item computer_science"

alias tls="take"

alias cdld="cd \$(lsltr | tail -1)"

alias td="todo"

alias rld="reload_functions"

alias gral="grep_all_insensitive"

alias graL="grep_all"

alias sal="sed_all"

alias pal="perl_all"

alias aof="green \$(alphabet_of_files)"

alias aofi="red \$(inverse_alphabet \$(alphabet_of_files))"

alias cof="count_of_files"

alias epb="printpb"

alias cpb="cat_copy"

alias enc="encrypt"

alias dec="decrypt"

alias een="edit_env"

alias ppe="pretty_print_env"

alias t="touch"

alias dsp="despace"

alias bell="tput bel"

alias uns="unsetopt"

alias seg="set -o | grep"

alias ung="unsetopt | grep"

alias sws="switch_say"

alias swS="switch_say_override"

alias esws="print $SAYCMD"

alias eswso="print $SAYCMD_OVERRIDE"

alias swp="switch_python"

alias swr="switch_ruby"

alias brl="brew list"

alias brln="brew link"

alias brul="brew unlink"

alias bri="brew install"

alias brr="brew reinstall"

alias bru="brew update; brew doctor"

alias brd="brew doctor"

alias brun="brew uninstall"

alias brud="brew update"

alias brug="brew update --verbose; brew upgrade"

alias brin="brew info"

alias brs="brew search"

alias bro="brew options"

alias brv="brew versions"

alias bkmk="bookmark"

alias wbkmk="work_bookmark"

alias rd="rubydoc"

alias saveall="rake -g 'git:foreach[rake -g base:save]'"

alias lbf="libfind_s"

alias rfind="libfind_s $RUBY_HOME"

alias ofind="libfind_s $OCAML_HOME"

alias pfind="libfind_s $PYTHON_HOME"

alias lfind="libfind_s $LOCAL_HOME"

alias dfind="libfind_s $DOTFILES_HOME"

alias hfind="libfind_s $HTML_HOME"

alias jfind="libfind_s $JS_HOME"

alias npmfind="libfind_s $NPMLIB_HOME"

alias jvfind="libfind_s $JV_HOME"

alias cfind="libfind_s $C_HOME"

alias sfind="libfind_s $SH_HOME"

alias zfind="libfind_s $ZSH_HOME"

alias prfind="libfind_s $PROG_HOME"

alias afind="libfind_s $AWK_HOME"

alias zshfind="file_grep $HOME/.zshrc"

alias sshf="file_grep $HOME/.ssh/config"


###############################################################################
# Records
###############################################################################

alias rentcode="get_record rent"

alias card="get_record card-mon"


###############################################################################
# Fundamental constants
###############################################################################
# alias e="copy_print 2.71828182845904523536028747135266249775724709369995"
#
# alias PI="copy_print 3.14159265358979323846264338327950288419716939937510"


###############################################################################
# Physical constants
###############################################################################
# alias G="copy_print '6.674e−11'"
#
# alias k="copy_print '1.38e-23'"
#
# alias N="copy_print '6.022e23'"
#
# alias h="copy_print '6.626e-34'"


###############################################################################
# Fun
###############################################################################

# Just a joke because i hate thenners!
alias than="then"

# I also hate thatters ...
alias that="than"
