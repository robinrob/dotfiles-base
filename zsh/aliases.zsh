# I favour using double quotes instead of single quotes for aliases, so that i
# can later do a find/replace to switch something out for an environment
# variable value.

###############################################################################
# Shell commands
###############################################################################
# Just a joke to all the thenners in the world!
alias than="then"

alias pcregrep='pcregrep --color=auto'

alias rmrf="rm -rf"

alias rmr="rm -r"

alias cpx="chmod +x"

alias cmx="chmod -x"

alias age="stat -f '%m%t%Sm %N'"

alias p="print"

alias dal="delete_alias"

alias unal="unalias_aliases"

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

alias lsh="find_hidden"

alias lsl="ls -lL"

alias lsd="ls -d"

alias isgit="show_git"

alias isg="isgit"

alias igi="isgit"

alias shell="print $SHELL"


###############################################################################
# GNU commands
###############################################################################
alias cp="nocorrect gcp -i"

alias kill="gkill"

alias mv="gmv"

alias egrep="gegrep"

alias grep="gegrep"

alias find="gfind"

alias sed="gsed -r"

alias gsed="gsed -r"

alias ls="/usr/local/bin/gls --color"

alias cat="gcat"

alias sed="gsed"

alias awk="gawk"

alias head="ghead"

alias tail="gtail"


###############################################################################
# Shortcuts
###############################################################################
alias pg="rebookmark page"

alias viM="/usr/bin/vim"

alias wifi="grec wifi"

alias vlc="open -a Vlc\ 2"

alias aud="open -a Audacity"

alias kcc="kill_processes cocos"

alias kbs="kill_processes browser-sync"

alias kid="kill_processes idea"

alias repals="rm repo_aliases.zsh; print_all_repo_aliases > repo_aliases.zsh; source_aliases"

alias news="rss news"

alias flight="rss flight"

alias space="rss space"

alias science="rss science"

alias rsS=$RSS_HOME/rss.rb

alias ycp="yes | cp"

alias api="cocosapi"

alias lsw="ls | wc -l"

alias pwdp="copy_print \$(pwd)"

alias cldl="green 'Moving $HOME/Downloads/* to Trash ...'; mv $HOME/Downloads/* $HOME/.Trash"

alias ssd="red 'Shutting down!'; sudo shutdown -h now"

alias SSD="ssd"

alias ssr="red 'Rebooting!'; sudo shutdown -r now"

alias SSR="ssr"

alias lgo="osascript -e 'tell application \"loginwindow\" to  «event aevtrlgo»'"

alias adbd="adb devices"

alias lsdl="ls $DOWNLOADS_HOME"

alias lstrdl="lstr $DOWNLOADS_HOME"

alias pag="ps aux | grep"

alias pyv="python --version"

alias apps="open /Applications"

alias bcd="nocorrect builtin cd"

alias sshkey="cat $HOME/.ssh/id_rsa.pub | pbcopy"

alias rkls="rake_do git:foreach nil"

alias str="du -dh $TRASH_HOME"

alias sdr="du -dh $HOME/Dropbox"

alias syslog="tail -f /var/log/system.log"


###############################################################################
# Applications/tools
##############################################################################
alias pix="open -a Pixelmator"

alias cpp="copy_print"

alias screensaver="sudo open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app"

alias scr="sudo open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app"

alias dic="dict"

alias utorrent="open -a uTorrent"

alias spotify="open -a Spotify"

alias spo="spotify"

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

alias e="$EDITOR"

alias v="$VISUAL"


###############################################################################
# Navigation
###############################################################################
alias cdap="cd_down_tree /Applications"

alias cdim="cd_down_tree $IMPORTANT_HOME"

alias cdcl="cd_down_tree /usr/local/Cellar"

alias cdts="cd_down_tree $JS_TESTS_HOME/src"

alias cdsam="cd_down_tree $COCOS_HOME/samples"

alias cdmw="cd_down_tree $COCOS_HOME/samples/js-moonwarriors"

alias cdpk="cdff"

alias cdlb="cd_down_tree /usr/local/Library"

alias cdcc="cd_down_tree $COCOS_HOME"

alias cdccl="cd_down_tree $COCOS_LITE_HOME"

alias cdph="cd_down_tree $PHOTOS_HOME"

alias cdla="cd_down_tree $PHOTOS_HOME/la"

alias cdpn="cd_down_tree $WORK_HOME/java/pon-blog-app"

alias cdssh="cd_down_tree $HOME/.ssh/"

alias cdscre="cd_down_tree $SCREENSAVERS_HOME"

alias cdbg="cd_down_tree $BACKGROUNDS_HOME"

alias cdsp="cd_down_tree $SPRITES_HOME"

alias cdsn="cd_down_tree $SOUNDS_HOME"

alias cdres="cd_down_tree $RES_HOME"

alias cdlst="cd_down_tree $LISTS_HOME"

alias cdls="cd_down_tree $LISTS_HOME"

alias cdzd="cd_down_tree $ZDOT_HOME"

alias cdgg="cd_down_tree $HOME/Google\ Drive"

alias cddocs="cd_down_tree $DOCS_HOME"

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

alias cdl="cd_down_tree $LOCAL_HOME"

alias cdw="cd_down_tree $WORK_HOME"

alias cdwr="cd_down_tree $WORK_RUBY_HOME"

alias cdwp="cd_down_tree $WORK_PYTHON_HOME"

alias cdrecipe="cd_down_tree $HTMLCSS_HOME/projects/recipe-finder"

alias cdsed="cd_down_tree $SH_HOME/practice/sed"

alias cdscr="cd_down_tree $SCREENSHOTS_HOME"

alias cdbspr="cd_down_tree $CSS_HOME/practice/bootstrap"

alias cdjqpr="cd_down_tree $JS_HOME/practice/jquery"

alias cdcam="cd_down_tree '$CAMERA_HOME'"

alias ocam="cd_down_tree $CAMERA_HOME && open ."

alias cdtr="cd_down_tree $TRASH_HOME"

alias cddr="cd_down_tree $HOME/Dropbox"

alias cdk="cd_down_tree $KITCHENPLAN_HOME"

alias cddl="cd_down_tree $DOWNLOADS_HOME"

alias cdmv="cd_down_tree $HOME/Movies"

alias cdaws="cd_down_tree `dirname $AWS_CONFIG`"

alias cdm="cd_down_tree $JS_HOME/projects"

alias cdmb="cd_down_tree $JS_HOME/projects/mobile-app-cordova"

alias cdgam="cd_down_tree $GAM_PATH"

alias cdexp="cd $EXPENSES_HOME"

alias cdrec="cd_down_tree $(dirname $RECORDS_PATH)"

alias cdlists="cd_down_tree $LISTS_HOME"


###############################################################################
# Development operations
###############################################################################
alias ut="utop"

alias cdfn="cd_down_tree $FUNCS_HOME"

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

alias gnb="gem install bundler && bundle install"

alias gib="gem install bundler"

alias gi="gem install"

alias bi="bundle install"

alias bl="bundle list"

alias bu="bundle update"

alias ni="sudo npm install"

alias nig="sudo npm install -g"

alias npmgls="npm config set json; npm -g list --depth=0"

alias npmls="npm config set json; npm list --depth=0"

alias anew="new_s awk awk"

alias pnew="new_s python py"

alias rnew="new_s ruby rb"

alias bnew="new_s bash sh"

alias snew="new_s sh sh"

alias onew="new_s ocaml ml"

alias znew="new_s zsh zsh"

alias fnew="new_s fish fish"

alias cnew="new -i '' -e cq -f"

alias jnew="jsnew"

alias cssnew="new -i '' -e css -f"

alias tnew="new -i '' -e txt -f"

alias gnew="new -i '' -e gimp -f"

alias mnew="new -i '' -e md -f"

alias demo="open $MOBILEAPP_HOME/www/index.html"

alias up2="pythonbrew use 2.7"

alias up3="pythonbrew use 3.2"

alias p2="$HOME/.pythonbrew/pythons/Python-2.7/bin/python"

alias p3="$HOME/.pythonbrew/pythons/Python-3.2/bin/python3"

alias pbrew="pythonbrew"

alias cen="cat $ENVS_PATH"

alias cals="cat $ALIASES_PATH"

alias lsfn="ls $FUNCS_HOME"

alias lfn="lsfn"

alias ctfn="ls $FUNCS_HOME | wc -l"

alias grfn="grep_functions"

alias js="jekyll serve"

alias cdnoc="cd_down_tree $WORK_HOME/ruby/cloudreach-chef/cloudreach-noc-chef"

alias cdms="cd_down_tree $WORK_HOME/ruby/cloudreach-chef/cloudreach-ms-chef"

alias ccr="cocos run -p android"

alias ccc="cocos compile -p android"

alias ccd="cocos deploy -p android"

alias ccl="logcat-color cocos"

alias ccn="cocos new -l js"

alias sv="cd_save"

alias fpl="fab pull"

alias kel="knife environment list"

alias knl="knife node list"

alias kul="knife upload"

alias kud="knife upload databag"

alias kdl="knife download"

alias vpnd="vpn -q"

###############################################################################
# Git
###############################################################################
alias glsf="git ls-files "

alias gau="git add -u"

alias gcdl="git ls-files --deleted | xargs git checkout"

alias gld="git log -p --topo-order --stat --pretty=format:\${_git_log_medium_format}"

alias grrn="git remote rename"

alias gacm="git add -u * && git add * && git commit -m"

alias grS="git reset"

alias grsH="git reset --hard"

alias gas="git add *"

alias gst="git status"

alias gSt="git stash"

alias grs="git remote show"

alias grso="git remote show origin"

alias gin="git init"

alias grm="git rm -r --cached"

alias gre="git remote"

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
alias rkser="rake_do rails:server"

alias rls="rails server"

alias rkm="rake_do db:migrate"

alias rkt="rake_do test"

alias rkss="rake_do git:sort_sub"

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

alias cjs="cat $LISTS_HOME/jobsites.txt"

alias mjs="$EDITOR $LISTS_HOME/jobsites.txt"

alias mtd="$EDITOR $LISTS_HOME/$TO_DO.txt"

alias ctd="cat $LISTS_HOME/$TO_DO.txt"

alias mref="edit_named_list refs"

alias cref="cat_named_list refs"

alias quotes="clist quotes"

alias mcol="$EDITOR $ZDOT_HOME/colors.zsh"

alias ocv="open -a OpenOffice $IMPORTANT_HOME/cv/cv.odt"

alias splq="$EDITOR $PROG_HOME/splunk/splunk_searches.txt"

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

alias mrvm="$EDITOR $HOME/.rvmrc"

alias mrvmrc="$EDITOR .rvmrc"

alias essh="edit $HOME/.ssh/config"

alias ess="edit $HOME/.ssh/config"

alias css="cat $HOME/.ssh/config"

alias cssh="cat $HOME/.ssh/config"

alias econf="edit $HOME/.ssh/config"

alias vzsh="vim $HOME/.zshrc"

alias mzsh="$EDITOR $HOME/.zshrc"

alias czsh="cat $HOME/.zshrc"

alias gzsh="cat $HOME/.zshrc | grep -i"

alias mzen="$EDITOR $HOME/.zshenv"

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

alias cms="edit $DOCS_HOME/commands.txt"

alias password="ruby $RUBY_HOME/projects/rbpassword/rbpassword.rb"

alias rnsall="cd_down_tree $SCREENSHOTS_HOME && despace"

alias mal="$EDITOR $ZDOT_HOME/aliases.zsh"

alias mun="$EDITOR $ZDOT_HOME/unaliases.zsh"

alias mop="$EDITOR $ZDOT_HOME/options.zsh"

alias mos="$EDITOR $ZDOT_HOME/osx.zsh"

alias men="$EDITOR $ZDOT_HOME/env_variables.zsh"

alias mpa="$EDITOR $ZDOT_HOME/path.zsh"

alias mmutt="$EDITOR $HOME/.mutt/muttrc"

alias gl="git log"

alias t2="t22"

alias t3="t3389"

alias jl="jsonlint"

alias bcodes="cat $IMPORTANT_HOME/passwords/Backup-codes-robin.smith.txt"

alias cmd="$EDITOR $TEMP_HOME/commands.txt"

alias window="open /Users/robinsmith/Dropbox/Camera\ Uploads/gif/window.gif"

alias cleantrash="sudo rm -rf $HOME/.Trash; mkdir $HOME/.Trash"

alias cgi="cat .gitignore"

alias kud="knife_upload_databag"

alias kne="knife node edit --$EDITOR vim"

alias kee="knife environment edit --$EDITOR vim"

alias fbs="fab save"

alias fcl="fab clean"

alias cgc="cat $HOME/.gitconfig"

alias mgc="$EDITOR $HOME/.gitconfig"

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

alias sprog="du -dh $PROG_HOME"

alias spr="sprog"

alias sd="du -dh"

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

alias cwr="cat $WORK_RECORDS_PATH"

alias gov="get_record directgovid"

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

alias phone2="get_record phone2"

alias phonef="get_record phone_formatted"

alias ph="phone"

alias phf="phone"

alias bank="get_record bank"

alias library="get_record library"

alias postcode="get_record home_postcode"

alias pc="postcode"

alias address="get_record home_address"

alias workaddress="get_record work_address"

alias workpostcode="get_record work_postcode"

alias residency="$ADOBE_PATH $CANADA_HOME/residency_form.pdf"

alias songs="cd_down_tree $SONGS_HOME"

alias cdsongs="cd_down_tree $SONGS_HOME"

alias sabihin="song sabihin_mo_na"

alias sb="sabihin"

alias skytrain="open $COMMON_DOCS_HOME/useful/vancouver_skytrain_map.pdf"

alias sky="skytrain"

alias tubemap="open $COMMON_DOCS_HOME/useful/tube_map.pdf"

alias pc="postcode"

alias ad="address"

alias ph="phone"


###############################################################################
# Functions
###############################################################################
alias light="lightning"

alias mva="move_to_applications"

alias lS="ls_sort_by_size"

alias cc="creative_commons_search"

alias toh="to_haml"

alias tot="to_html"

alias gup="gulp_up"

alias glp="gulp_iterm_pwd"

alias id="idea"

alias i="idea"

alias lo="localhost_browse"

alias lom="localhost_browse_edit"

alias nis="npm_install_save"

alias moq="edit_open_jquery"

alias jqdoc="jquery_doc_search"

alias jqudoc="jquery_doc_search"

alias judoc="jquery_ui_doc_search"

alias mo="edit_open"

alias rex="regex_lookup"

alias fr="find_recursive"

alias trash="move_to_trash"

alias del="move_to_trash"

alias repoal="recreate_all_repo_aliases"

alias cdt="cd_down_tree"

alias cdf="cd_to_file"

alias dd="duckduckgo"

alias gr="grep_recursive"

alias gR="grep_recursive_sensitive"

alias sedall="sed_all"

alias jks="jekyll_serve"

alias lib="search_library"

alias yell="yell_search"

alias yellm="yell_map_search"

alias yelp="yelp_search"

alias phys="physics_forums_search"

alias thes="thesaurus"

alias the="thesaurus"

alias clc="calc"

alias cr="cat_run"

alias trn="translate_to_english"

alias trt="translate_to_tagalog"

alias cbs="browser_sync_cocos"

alias lrl="livereload"

alias ccrf="cocos_class_rename"

alias mvf="move_force"

alias gsap="git_submodule_add_project"

alias clf="clean_files"

alias dtsv="dotfiles_save"

alias gtr="google_translate"

alias olst="open_last_modified"

alias hmrec="salesforce_record eu1"

alias rsal="source_aliases"

alias rsaL="resource_aliases"

alias phon="phonetic"

alias scd="start_cocos_dev"

alias std="start_game_dev"

alias enD="end_dev"

alias wpb="which_pbcopy"

alias mvt="move_tags"

alias mfn="edit_function"

alias hpb="head_pbcopy"

alias clh="clean_home $HOME"

alias clf="clean_files"

alias 80="repeat_string 80 -"

alias rps="repeat_string"

alias colorc="color_using_code"

alias grc="grep_color"

alias gco="get_color_code"

alias sbr="set_browser"

alias bgr="background"

alias lsdir="ls_dirname"

alias sf="salesforce_search"

alias sfc="salesforce_class_search"

alias sfd="salesforce_developer_search"

alias sfm="salesforce_method_search"

alias sfo="salesforce_object_search"

alias bk="safari_books_search"

alias sfs="bk"

alias rp="source_repo"

alias kps="kill_processes"

alias grp="grep_processes"

alias lps="list_processes"

alias pdf="print_default"

alias grec="get_record"

alias reminderrobin="reminder robin@mrrobinsmith.com"

alias reminderwork="reminder robin.smith@cloudreach.co.uk"

alias Cp="silent_cp"

alias gh="github"

alias bb="bitbucket"

alias ghu="github_user_search"

alias bbu="bitbucket_user_search"

alias grbk="grep_bookmarks"

alias cpy="copy"

alias clst="cat \$(lastf)"

alias mlst="olst $EDITOR"

alias mvls="mv \$(lastf)"

alias wk="wiki"

alias ggt="google_translate"

alias ggg="google_groups"

alias gg="google"

alias cls="cat_named_list"

alias mls="edit_named_list"

alias als="add_named_list_item"

alias aLs="add_list_item"

alias dls="delete_named_list_item"

alias dLs="delete_list_item"

alias nls="new_list"

# alias dlls="delete_list"

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

alias atc="add_named_list_item courses"

alias read1="take $TO_READ"

alias watch="take $TO_WATCH"

alias learn="take $TO_LEARN"

alias help="add_named_list_item help"

alias ref="add_named_list_item refs"

alias shop="add_named_list_item shopping"

alias quote="add_named_list_item quotes"

alias jobs="add_named_list_item jobsites"

alias comp="add_named_list_item computer_science"

alias tls="take"

alias cdld="cd \$(lsltr | tail -1)"

alias dspdl="cd_down_tree $HOME/Downloads; despace; cd - > /dev/null"

alias td="todo"

alias rld="reload_functions"

alias gral="grep_all"

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

alias h="head"

alias t="touch"

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

alias bri="brew install"

alias bru="brew update"

alias brun="brew uninstall"

alias brug="brew update; brew upgrade"

alias brs="save_homebrew"

alias b="browser"

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
