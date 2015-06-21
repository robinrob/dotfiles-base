###############################################################################
# Environment variables
###############################################################################

###############################################################################
# Shell
###############################################################################
export EDITOR="mvim"

export VISUAL=vim

###############################################################################
# ZSH global variables
###############################################################################
export TRUE_VALUE="yes"

export TRUE="yes"

export FALSE=no

export TO_DO="do"

export TO_READ=read

export TO_WATCH=watch

export TO_LEARN=learn

###############################################################################
# Host-specific
###############################################################################
# `sudo hostname <name>` or `sudo scutil --set HostName <name>` to change the
# hostname. `hostname -s` gets just the part before the dot.
export HOSTNAME=`hostname -s`

export MERCURY_HOSTNAME='mercury'

export VENUS_HOSTNAME='venus'

if [[ $HOSTNAME == "venus" ]]
then
  export PGDATA="$HOME/Library/Application Support/Postgres/var-9.3"
elif [[ $HOSTNAME == "mercury" ]]
then
  export PGDATA="$HOME/Library/Containers/com.heroku.postgres/Data/Library/Application Support/Postgres/var"
fi

if [[ "$HOSTNAME" == "$MERCURY_HOSTNAME" ]]
then
	export BROWSER="safari"
  export SAYCMD=1  
else
	export BROWSER="chrome"
fi


###############################################################################
# Directories
###############################################################################
export GOOGLE_DRIVE="$HOME/Google Drive"

###############################################################################
# Programming top-level repos
###############################################################################
export PROGRAMMING_HOME="$HOME/Programming/robin"

export PROG_HOME="$HOME/Programming/robin"

export AWK_HOME="$HOME/Programming/robin/awk"

export C_HOME="$HOME/Programming/robin/c"

export C_PLUS_PLUS_HOME="$HOME/Programming/robin/c-plus-plus"

export COFFEESCRIPT_HOME="$HOME/Programming/robin/coffeescript"

export COQ_HOME="$HOME/Programming/robin/coq"

export DOCS_HOME="$HOME/Programming/robin/docs"

export FISH_HOME="$HOME/Programming/robin/fish"

export FORCE_COM_HOME="$HOME/Programming/robin/force.com"

export HTML_HOME="$HOME/Programming/robin/html5"

export CSS_HOME="$HOME/Programming/robin/css"

export JV_HOME="$HOME/Programming/robin/java"

export JAVASCRIPT_HOME="$HOME/Programming/robin/javascript"

export MARKDOWN_HOME="$HOME/Programming/robin/markdown"

export OCAML_HOME="$HOME/Programming/robin/ocaml"

export PERL_HOME="$HOME/Programming/robin/perl"

export PYTHON_HOME="$HOME/Programming/robin/python"

export RUBY_HOME="$HOME/Programming/robin/ruby"

export SCALA_HOME="$HOME/Programming/robin/scala"

export SH_HOME="$HOME/Programming/robin/sh"

export RES_HOME="$HOME/Programming/robin/res"

export SPRITES_HOME="$RES_HOME/sprites"

export SOUNDS_HOME="$RES_HOME/sounds"

export ZSH_HOME="$HOME/Programming/robin/zsh"

export PI_HOME=$PYTHON_HOME/projects/pi

export PYAPP_HOME=$PYTHON_HOME/projects/pyapp

export FABFILE_HOME=$PYTHON_HOME/projects/fabfile

export NPMLIB_HOME=/usr/local/lib/node_modules

export FABFILE_BASIC_HOME=$PYTHON_HOME/projects/fabfile-basic

export DOTFILES_HOME=$ZSH_HOME/projects/dotfiles

export DOTFILES_BASE_HOME=$DOTFILES_HOME/dotfiles-base

export COLORS_PATH=$DOTFILES_BASE_HOME/zsh/colors.zsh

export SHLIB_HOME=$SH_HOME/lib

export SHLOG_PATH=$SHLIB_HOME/log.sh

export SHCOLORS_PATH=$SHLIB_HOME/colors.sh

export ZSHLIB_HOME=$ZSH_HOME/lib

export ZSHLOG_PATH=$ZSHLIB_HOME/log.zsh

export ZSHCOLORS_PATH=$DOTFILES_BASE_HOME/zsh/colors.zsh

export ZDOT_HOME=$DOTFILES_HOME/dotfiles-base/zsh

export ENVS_PATH=$ZDOT_HOME/env_variables.zsh

export FUNCS_HOME=$ZDOT_HOME/functions

export FORCE_COM_HOME=$PROG_HOME/force.com

export WORK_FORCE_COM_HOME=$WORK_HOME/force.com

export BACKUPS_HOME=$RUBY_HOME/projects/aws-backup-manager

export JV_HOME=$PROG_HOME/java

export JS_HOME=$PROG_HOME/javascript

export JS_LIB_HOME=$JS_HOME/lib

export HTML_CSS_HOME=$PROG_HOME/html-css

export HTML_LESS_HOME=$PROG_HOME/html-less

export HTML_TEMPLATES_HOME=$HTML_CSS_HOME/templates

export RUBY_TEMPLATES_HOME=$RUBY_HOME/templates

export RUBYAPP_HOME=$RUBY_HOME/projects/ruby-app

export CRASH_REPORTS_HOME=$MERCURY_DOCS_HOME/air-crash-reports

# export RAKELIB_HOME=$RUBY_HOME/projects/rakelib
export RAKELIB_HOME=$HOME/.rake

export RAKELIB="$RAKELIB_HOME"

export RAKEFILE="$RAKELIB_HOME/Rakefile"

export GLOBAL_RAKEFILE_HOME=$RUBY_HOME/projects/global-rakefile

export RSS_HOME=$RUBY_HOME/projects/rss

export QUIZ_HOME=$RUBY_HOME/projects/quiz

export MRROBINSMITH_COM_HOME=$RUBY_HOME/projects/robinrob.github.io

export MRROBINSMITH_COM_DEV_HOME=$RUBY_HOME/projects/robinrob.github.io-dev

export GITHUB_HOME=$RUBY_HOME/projects/github

export MOBILEAPP_HOME=$JS_HOME/projects/mobile-app-cordova

export REPOS=$RUBY_HOME" "$SH_HOME" "$DOTFILES_HOME" "$PYTHON_HOME

export RUBY_LIB=/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/lib/ruby/2.0.0

export EC2_HOME=/usr/local/lib/ec2-api-tools-1.6.11.0

export GAM_PATH=/usr/local/Library/gam

export WORK_HOME=$HOME/Programming/work

export WORK_RUBY_HOME=/Users/robinsmith/Programming/robin/ruby

export WORK_PYTHON_HOME=$HOME/Programming/work/python

export NOCCHEF=$WORK_HOME/ruby/cloudreach-chef/cloudreach-noc-chef

export MSCHEF=$WORK_HOME/ruby/cloudreach-chef/cloudreach-ms-chef

export LOCAL_HOME=$RUBY_HOME/projects/local

export TODO_HOME=$LOCAL_HOME/lib/todo.csv

export INTELLIJ_VERSION=14

export INTELLIJ_IDEA="IntelliJ IDEA $INTELLIJ_VERSION"

export INTELLIJ_IDEA_HOME="/Applications/$INTELLIJ_IDEA.app/Contents/MacOS"

export INTELLIJ_IDEA_PATH="$INTELLIJ_IDEA_HOME/idea"

export INTELLIJ_IDEA_PREFS_HOME="$HOME/Library/Preferences/IntelliJIdea$INTELLIJ_VERSION"

export INTELLIJ_CONFIG="$HOME/Library/Preferences/IntelliJIdea$INTELLIJ_VERSION/keymaps/Robin.xml"

export INTELLIJ_COLORS="$HOME/Library/Preferences/IntelliJIdea$INTELLIJ_VERSION/colors"

export PICTURES_HOME=$GOOGLE_DRIVE/pictures/pictures

export PHOTOS_HOME=$GOOGLE_DRIVE/pictures/photos

export LA_HOME=$PHOTOS_HOME/la

export FILES_HOME=$HOME/Dropbox

export HOSTFILES_HOME=$FILES_HOME/$HOSTNAME

export COMMON_HOME=$FILES_HOME/common

export COMMON_DOCS_HOME=$COMMON_HOME/docs

export MERCURY_HOME=$FILES_HOME/$MERCURY_HOSTNAME

export MERCURY_DOCS_HOME=$MERCURY_HOME/docs

export SONGS_HOME=$MERCURY_DOCS_HOME/creative/songs

export VENUS_HOME=$FILES_HOME/$VENUS_HOSTNAME

export TEMP_HOME=$HOSTFILES_HOME/temp

export DOCS_HOME=$HOSTFILES_HOME/docs

export LISTS_HOME=$MERCURY_HOME/docs/lists

export RDOCS_HOME=$RFILES_HOME/docs

export DOWNLOADS_HOME="$HOME/Downloads"

export IMPORTANT_HOME=$DOCS_HOME/IMPORTANT

export KNOWLEDGE_HOME=$DOCS_HOME/knowledge

export SCREENSHOTS_HOME=$HOSTFILES_HOME/screenshots

export SCREENSHOT_NAME=$HOSTNAME

export PHONEGAP_HOME=/usr/local/Library/phonegap-2.9.0

export ANDROID_HOME=/usr/local/Cellar/android-sdk

export DATA_LOADER_PATH=/Applications/LexiLoader_v30.app/Contents/Resources/Java/Dataloader.jar

export USEFUL_HOME=$DOCS_HOME/useful

export AWS_CONFIG="$HOME/.aws/config"

export KITCHENPLAN_HOME=/opt/kitchenplan

export RECORDS_HOME="$MERCURY_HOME/docs/IMPORTANT/records"

export WORK_RECORDS_HOME="$VENUS_HOME/docs/IMPORTANT/records"

export RECEIPTS_HOME=$GOOGLE_DRIVE/expenses

export EXPENSES_HOME=$RECEIPTS_HOME

# This must NOT be wrapped in quotes or the whitespace-escaping in the path does not work!!
export CAMERA_HOME="$FILES_HOME/Camera\ Uploads"

export TRASH_HOME=$HOME/.Trash

export CANADA_HOME="$MERCURY_HOME/docs/IMPORTANT/canada"

export USE_PYTHON=1

export USE_RUBY=1

export SAYCMD_OVERRIDE=0

export ADOBE_PATH="/Applications/Adobe\ Reader.app/Contents/MacOS/AdobeReader"

export NDK_ROOT=/usr/local/Cellar/android-ndk/r9d/

export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/22.6.2/

export ANT_ROOT=/usr/local/Cellar/ant/1.9.4/bin/

export BACKGROUNDS_HOME=$DOTFILES_BASE_HOME/config/files/backgrounds/jpg

export SYSTEM_SCREENSAVERS_HOME=/Library/Screen\ Savers/Default\ Collections

export SCREENSAVERS_HOME="$SYSTEM_SCREENSAVERS_HOME/Robin"


# Projects
export BOUNCING_BALLS_HOME="$JS_HOME/projects/bouncing-balls"

export CONCENTRATION_GAME_HOME="$JS_HOME/projects/concentration-game"

export FLAPPY_FISH_HOME="$JS_HOME/projects/flappy-fish"

export PLANET_PAIRS_HOME="$JS_HOME/projects/planet-pairs"

export COCOS_EXAMPLES_HOME="$JS_HOME/projects/cocos-examples"

export RUNNER_HOME="$JS_HOME/projects/runner"

export ORBITER_HOME="$JS_HOME/projects/orbiter-lite"

export GAME_HOME=$COCOS_EXAMPLES_HOME

###############################################################################
# Files
###############################################################################
export DEFAULT_DESKTOP="$BACKGROUNDS_HOME/DefaultDesktop.jpg"

export SYSTEM_DESKTOP_PATH="/System/Library/CoreServices/DefaultDesktop.jpg"

export SYSTEM_PROFILEIMAGES_HOME=/Library/User\ Pictures

export USER_DESKTOPDB_PATH=$HOME/Library/Application\ Support/Dock/desktoppicture.db

export RECORDS_PATH=$RECORDS_HOME/records.txt

export WORK_RECORDS_PATH=$WORK_RECORDS_HOME/records.txt

typeset -T RECORDS records
RECORDS=$RECORDS_PATH:$WORK_RECORDS_PATH

export PG_CONF=$PGDATA/postgresql.conf

export DEFAULT_GIT_REMOTE="origin"

export BREWLIST=$DOTFILES_BASE_HOME/config/files/homebrew.txt

export GDOC_TEMPLATE=$GOOGLE_DRIVE/new_document.gdoc

export BOOKMARKS_PATH=$LISTS_HOME/bookmarks.txt

export WORKBOOKMARKS_PATH=$LISTS_HOME/work_bookmarks.txt

typeset -T BOOKMARKS bookmarks
bookmarks=($WORKBOOKMARKS_PATH $BOOKMARKS_PATH $LISTS_HOME/books.txt)

export BOOKMARKS_ALIAS_PATH=$ZDOT_HOME/bookmarks.zsh

export ALIASES_PATH=$ZDOT_HOME/aliases.zsh

typeset -T ALIAS_FILES alias_files

alias_files=($ALIASES_PATH $BOOKMARKS_ALIAS_PATH)

###############################################################################
# Applications
###############################################################################
export SUBLIMETEXT_HOME="$HOME/Library/Application Support/Sublime Text 3"

export CHROME_PATH="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

export GIMP_PATH="/Applications/GIMP.app/Contents/MacOS/GIMP"

export GIMP_HOME="$HOME/.gimp"

export gimp_dir="$HOME/.gimp"


###############################################################################
# Colors
###############################################################################
export GREP_COLOR="1;37"

export GREP_COLORS="ms=$GREP_COLOR:mc=01;31:sl=:cx=:fn=0:ln=32:bn=32:se=36"

export LS_COLORS='di=1;34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'

export CLICOLOR=1

# Syntax highlighing in `less`
# Requires `brew install source-highlight`
##############################
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"

export LESS=" -R "

export LESSC_PATH="/usr/local/lib/node_modules/less/bin/lessc"

###############################################################################
# Cocos
###############################################################################
export COCOS_HOME="/usr/local/Library/cocos2d-js-v3.2"

export COCOS_LITE_HOME="/usr/local/Library/cocos2d-js-v3.6-lite"

export COCOS_CONSOLE_ROOT=$COCOS_HOME/tools/cocos2d-console/bin

export ANT_ROOT=/usr/local/bin

export NDK_ROOT=/usr/local/Cellar/android-ndk/r9d/

export JS_TESTS_HOME="$COCOS_HOME/samples/js-tests"

export NODE_PATH=/usr/lib/node_modules

export GULPFILE_HOME="$JS_HOME/projects/gulpfile"

export GULPFILE_PATH="$GULPFILE_HOME/gulpfile.js"
