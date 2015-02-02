###############################################################################
# Environment variables
###############################################################################

###############################################################################
# Shell
###############################################################################
export EDITOR=mvim

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
# sudo hostname <name> to change hostname
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

export PROG_HOME="$HOME/Programming/robin"

export PYTHON_HOME=$PROG_HOME/python

export PY_HOME=$PYTHON_HOME

export PYAPP_HOME=$PY_HOME/projects/pyapp

export FABFILE_HOME=$PY_HOME/projects/fabfile

export NPMLIB_HOME=/usr/local/lib/node_modules

export FABFILE_BASIC_HOME=$PY_HOME/projects/fabfile-basic

export ZSH_HOME=$PROG_HOME/zsh

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

export ALIASES_PATH=$ZDOT_HOME/aliases.zsh

typeset -T ALIAS_FILES alias_files

ALIAS_FILES=$ALIASES_PATH:$BOOKMARKS_ALIAS_PATH:$WORKBOOKMARKS_ALIAS_PATH

export FORCE_COM_HOME=$PROG_HOME/force.com

export WORK_FORCE_COM_HOME=$WORK_HOME/force.com

export BACKUPS_HOME=$RUBY_HOME/projects/aws-backup-manager

export JV_HOME=$PROG_HOME/java

export JS_HOME=$PROG_HOME/javascript

export JS_LIB_HOME=$JS_HOME/lib

export SPRITES_HOME=$JS_HOME/projects/sprites

export HTML_CSS_HOME=$PROG_HOME/html-css

export HTML_LESS_HOME=$PROG_HOME/html-less

export HTML_TEMPLATES_HOME=$HTML_CSS_HOME/templates

export COFFEESCRIPT_HOME=$PROG_HOME/coffeescript

export RUBY_TEMPLATES_HOME=$RUBY_HOME/templates

export RUBYAPP_HOME=$RUBY_HOME/projects/ruby-app

# export RAKELIB_HOME=$RUBY_HOME/projects/rakelib
export RAKELIB_HOME=$HOME/.rake

export RAKELIB="$RAKELIB_HOME"

export RAKEFILE="$RAKELIB_HOME/Rakefile"

export GLOBAL_RAKEFILE_HOME=$RUBY_HOME/projects/global-rakefile

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

export INTELLIJ_IDEA="IntelliJ Idea $INTELLIJ_VERSION"

export INTELLIJ_IDEA_HOME="$HOME/Library/Preferences/IntelliJIdea$INTELLIJ_VERSION"

export INTELLIJ_CONFIG="$HOME/Library/Preferences/IntelliJIdea$INTELLIJ_VERSION/keymaps/Robin.xml"

export INTELLIJ_COLORS="$HOME/Library/Preferences/IntelliJIdea$INTELLIJ_VERSION/colors"

export FILES_HOME=$HOME/Dropbox

export PICTURES_HOME=$HOME/Google\ Drive/pictures/pictures

export PHOTOS_HOME=$HOME/Google\ Drive/pictures/photos

export HOSTFILES_HOME=$FILES_HOME/$HOSTNAME

export COMMON_HOME=$FILES_HOME/common

export COMMON_DOCS_HOME=$COMMON_HOME/docs

export MERCURY_HOME=$FILES_HOME/$MERCURY_HOSTNAME

export SONGS_HOME=$MERCURY_HOME/docs/creative/songs

export VENUS_HOME=$FILES_HOME/$VENUS_HOSTNAME

export TEMP_HOME=$HOSTFILES_HOME/temp

export DOCS_HOME=$HOSTFILES_HOME/docs

export LISTS_HOME=$MERCURY_HOME/docs/lists

export RDOCS_HOME=$RFILES_HOME/docs

export DOWNLOADS_HOME='$HOME/Downloads'

export IMPORTANT_HOME=$DOCS_HOME/IMPORTANT

export KNOWLEDGE_HOME=$DOCS_HOME/knowledge

export SCREENSAVERS_HOME=$HOSTFILES_HOME/screensavers

export SCREENSHOTS_HOME=$HOSTFILES_HOME/screenshots

export SCREENSHOT_NAME=$HOSTNAME

export PHONEGAP_HOME=/usr/local/Library/phonegap-2.9.0

export ANDROID_HOME=/usr/local/Cellar/android-sdk

export DATA_LOADER_PATH=/Applications/LexiLoader_v30.app/Contents/Resources/Java/Dataloader.jar

export USEFUL_HOME=$DOCS_HOME/useful

export AWS_CONFIG="$HOME/.aws/config"

export KITCHENPLAN_HOME=/opt/kitchenplan

export RECORDS_HOME=$MERCURY_HOME/docs/IMPORTANT/records

export WORK_RECORDS_HOME=$VENUS_HOME/docs/IMPORTANT/records

export RECEIPTS_HOME=$HOME/Google\ Drive/expenses/

export EXPENSES_HOME=$HOME/Google\ Drive/expenses/

# This must NOT be wrapped in quotes or the whitespace-escaping in the path does not work!!
export CAMERA_HOME=$FILES_HOME/Camera\ Uploads

export TRASH_HOME=$HOME/.Trash

export CANADA_HOME=$MERCURY_HOME/docs/IMPORTANT/canada

export USE_PYTHON=1

export USE_RUBY=1

export SAYCMD_OVERRIDE=0

export ADOBE_PATH=/Applications/Adobe\ Reader.app/Contents/MacOS/AdobeReader

export NDK_ROOT=/usr/local/Cellar/android-ndk/r9d/

export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/22.6.2/

export ANT_ROOT=/usr/local/Cellar/ant/1.9.4/bin/

export BACKGROUNDS_HOME=$DOTFILES_BASE_HOME/config/files/backgrounds

export SYSTEM_SCREENSAVERS_HOME=/Library/Screen\ Savers/Default\ Collections

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

export BOOKMARKS_ALIAS_PATH=$ZDOT_HOME/bookmarks.zsh

export WORKBOOKMARKS_PATH=$LISTS_HOME/work_bookmarks.txt

export WORKBOOKMARKS_ALIAS_PATH=$ZDOT_HOME/work_bookmarks.zsh

typeset -T BOOKMARKS bookmarks
BOOKMARKS=$BOOKMARKS_PATH:$WORKBOOKMARKS_PATH

###############################################################################
# Applications
###############################################################################
export SUBLIMETEXT_HOME="$HOME/Library/Application Support/Sublime Text 3"


###############################################################################
# Colors
###############################################################################
export GREP_COLOR="0;32"

export GREP_COLORS='ms=01;35:mc=01;31:sl=:cx=:fn=0:ln=32:bn=32:se=36'

export LS_COLORS='di=1;34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'

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

export COCOS_CONSOLE_ROOT=$COCOS_HOME/tools/cocos2d-console/bin

export ANT_ROOT=/usr/local/bin

export NDK_ROOT=/usr/local/Cellar/android-ndk/r9d/
