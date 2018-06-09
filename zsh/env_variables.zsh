###############################################################################
# Environment variables
###############################################################################

###############################################################################
# Shell configuration
###############################################################################
export EDITOR="macvim"

# export VISUAL=vim
export VISUAL=macvim

###############################################################################
# Colors
###############################################################################
export GREP_COLOR="1;37"

export GREP_COLORS="ms=$GREP_COLOR:mc=01;31:sl=:cx=:fn=0:ln=32:bn=32:se=36"

export LS_COLORS='di=1;34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'

export CLICOLOR=1

###############################################################################
# Syntax highlighing in `less`. Requires `brew install source-highlight`
###############################################################################
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"

export LESS=" -R "

export LESSC_PATH="/usr/local/lib/node_modules/less/bin/lessc"

###############################################################################
# Python
###############################################################################
export PYTHONDONTWRITEBYTECODE=1

###############################################################################
# Ruby
###############################################################################
export RUBY_LIB=/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/lib/ruby/2.0.0

export RUBY_VERSION=2.5.0

###############################################################################
# Node
###############################################################################
export NPMLIB_HOME=/usr/local/lib/node_modules

# export NODE_VERSION=5.5.0
# export NODE_VERSION=6.9.0
export NODE_VERSION=6.13.0
export NODE_VERSION=9.7.1
#
###############################################################################
# Java
#############################################################################
# export JAVA_VERSION="1.6.0.jdk"
export JAVA_VERSION="jdk1.7.0_80.jdk"
# export JAVA_VERSION="jdk1.8.0_102.jdk"
# export JAVA_VERSION="jdk-9.0.4.jdk"

export JAVA_HOME="/Library/Java/JavaVirtualMachines/$JAVA_VERSION/Contents/Home"

# export JAVA_HOME="/Library/Java/JavaVirtualMachines//Contents/Home"

###############################################################################
# Go
#############################################################################
export GOPATH=$HOME/.go

###############################################################################
# Host-specific variables
###############################################################################
# `sudo hostname <name>` or `sudo scutil --set HostName <name>` to change the
# hostname. `hostname -s` gets just the part before the dot.
export HOSTNAME=`hostname -s`

export MERCURY_HOSTNAME='mercury'

export JUPITER_HOSTNAME='jupiter'

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
	export BROWSER="chrome"
fi

export BROWSER_APP="Google\ Chrome"


###############################################################################
# Code repos
###############################################################################
export PROGRAMMING_HOME="$HOME/Programming/robin"

export PROG_HOME="$HOME/Programming"

export ROBIN_HOME="$HOME/Programming/robin"

export AWK_HOME="$HOME/Programming/robin/awk"

export C_HOME="$HOME/Programming/robin/c"

export C_PLUS_PLUS_HOME="$HOME/Programming/robin/c-plus-plus"

export COFFEESCRIPT_HOME="$HOME/Programming/robin/coffeescript"

export COQ_HOME="$HOME/Programming/robin/coq"

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

export GO_HOME="$HOME/Programming/robin/go"

export PI_HOME=$PYTHON_HOME/projects/pi

export PYAPP_HOME=$PYTHON_HOME/projects/pyapp

export FABFILE_HOME=$PYTHON_HOME/projects/fabfile

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

export CONFIG_HOME=$DOTFILES_BASE_HOME/config

export CONFIG_DOTFILES_HOME=$DOTFILES_BASE_HOME/config/dotfiles

export CONFIG_FILES_HOME=$DOTFILES_BASE_HOME/config/files

export FORCE_COM_HOME=$ROBIN_HOME/force.com

export WORK_FORCE_COM_HOME=$WORK_HOME/force.com

export BACKUPS_HOME=$RUBY_HOME/projects/aws-backup-manager

export JV_HOME=$ROBIN_HOME/java

export JS_HOME=$ROBIN_HOME/javascript

export JS_LIB_HOME=$JS_HOME/lib

export NODE_HOME=$ROBIN_HOME/node

export TYPESCRIPT_HOME=$ROBIN_HOME/typescript

export C_SHARP_HOME=$ROBIN_HOME/c_sharp

export OPENRA_HOME=$C_SHARP_HOME/OpenRA

export HEROES_HOME=$ROBIN_HOME/typescript/practice/heroes-tutorial

export LODASH_PRACTICE_HOME=$ROBIN_HOME/node/practice/lodash

export HTML_CSS_HOME=$ROBIN_HOME/html-css

export HTML_LESS_HOME=$ROBIN_HOME/html-less

export RUBY_TEMPLATES_HOME=$RUBY_HOME/templates

export RUBYAPP_HOME=$RUBY_HOME/projects/ruby-app

# export RAKELIB_HOME=$RUBY_HOME/projects/rakelib
export RAKELIB_HOME=$HOME/.rake

export RAKELIB="$RAKELIB_HOME"

export RAKEFILE="$RAKELIB_HOME/Rakefile"

export GLOBAL_RAKEFILE_HOME=$RUBY_HOME/projects/global-rakefile

export RSS_HOME=$RUBY_HOME/projects/rss-opener

export QUIZ_HOME=$RUBY_HOME/projects/quiz

export WEBSITE_HOME=$JS_HOME/projects/rsmithio

export GITHUB_HOME=$RUBY_HOME/projects/github

export MOBILEAPP_HOME=$JS_HOME/projects/mobile-app-cordova

export BOUNCING_BALLS_HOME="$JS_HOME/projects/bouncing-balls"

export CONCENTRATION_GAME_HOME="$JS_HOME/projects/concentration-game"

export CONSOLE_WRITER_HOME="$JS_HOME/projects/console-writer"

export FLAPPY_FISH_HOME="$JS_HOME/projects/flappy-fish"

export PLANET_PAIRS_HOME="$JS_HOME/projects/planet-pairs"

export COCOS_EXAMPLES_HOME="$JS_HOME/projects/cocos-examples"

export RUNNER_HOME="$JS_HOME/projects/runner"

export ORBITER_HOME="$JS_HOME/projects/orbiter"

export ORBITER_NEW_HOME="$JS_HOME/projects/orbiter-new"

export GAME_HOME=$COCOS_EXAMPLES_HOME

export OPENRA=$C_SHARP_HOME/OpenRA

export RECIPES_APP_HOME=$JS_HOME/projects/recipes-app

export RECIPES_SERVER_HOME=$RUBY_HOME/projects/recipes-server

export ANGULAR_TEST_HOME=$JS_HOME/projects/angular-test

export NOS_HOME=$WORK_HOME/python/NOS-BIT

export NOS2_HOME=$WORK_HOME/python/NOS-BIT-2

export KAPTIO_HOME=$WORK_HOME/python/kaptio

export WORK_HOME=$HOME/Programming/work

export WORK_RUBY_HOME=/Users/robinsmith/Programming/robin/ruby

export WORK_PYTHON_HOME=$HOME/Programming/work/python

export NOCCHEF=$WORK_HOME/ruby/cloudreach-chef/cloudreach-noc-chef

export MSCHEF=$WORK_HOME/ruby/cloudreach-chef/cloudreach-ms-chef

export LOCAL_HOME=$DOTFILES_HOME/local

export ORIGINS_HOME=$JS_HOME/projects/fundamental-origins

export ORIGINS_DEV_HOME=$JS_HOME/projects/fundamental-origins-dev

export OCT_HOME=$ROBIN_HOME/octave

export SWIFT_HOME=$ROBIN_HOME/swift

export CALCULATOR_HOME=$SWIFT_HOME/projects/calculator

export GUITAR_CHORDS_HOME=$SWIFT_HOME/projects/GuitarChords

export APPLESCRIPT_HOME=$ROBIN_HOME/applescript

export DICSAURUS_HOME=$PYTHON_HOME/projects/dicsaurus

export LIFE_HOME=$PYTHON_HOME/projects/life

###############################################################################
# Directories
###############################################################################
export GOOGLE_DRIVE="$HOME/Google Drive"

export CRASH_REPORTS_HOME=$MERCURY_DOCS_HOME/air-crash-reports

export RECORDS_HOME="$IMPORTANT_HOME/records"

export WORK_RECORDS_HOME="$VENUS_HOME/docs/IMPORTANT/records"

export EXPENSES_HOME="$GOOGLE_DRIVE/expenses"

# This must NOT be wrapped in quotes or the whitespace-escaping in the path does not work!!
export CAMERA_HOME="$FILES_HOME/Camera\ Uploads"

export TRASH_HOME="$HOME/.Trash"

export CANADA_HOME="$MERCURY_HOME/docs/IMPORTANT/canada"

export NDK_ROOT=/usr/local/Cellar/android-ndk/r9d/

export ANDROID_SDK_ROOT=/usr/local/Cellar/android-sdk/22.6.2/

export ANT_ROOT=/usr/local/Cellar/ant/1.9.4/bin/

export BACKGROUNDS_HOME=$DOTFILES_BASE_HOME/config/files/backgrounds/jpg

export SYSTEM_SCREENSAVERS_HOME=/Library/Screen\ Savers/Default\ Collections

export SCREENSAVERS_HOME="$SYSTEM_SCREENSAVERS_HOME/Robin"

export EC2_HOME=/usr/local/lib/ec2-api-tools-1.6.11.0

export GAM_PATH=/usr/local/Library/gam

export TODO_HOME=$LOCAL_HOME/lib/todo.csv

export LA_HOME=$PHOTOS_HOME/la

export FILES_HOME=$HOME/Dropbox

export HOSTFILES_HOME=$FILES_HOME/$HOSTNAME

export COMMON_HOME=$FILES_HOME/common

export COMMON_DOCS_HOME=$COMMON_HOME/docs

export MERCURY_DOCS_HOME="$GOOGLE_DRIVE/docs"

export SONGS_HOME=$MERCURY_DOCS_HOME/creative/songs

export SINGING_HOME="$HOME/Google\ Drive/singing"

export STORIES_HOME=$MERCURY_DOCS_HOME/creative/writing/stories

export VENUS_HOME=$FILES_HOME/$VENUS_HOSTNAME

export TEMP_HOME=$HOSTFILES_HOME/temp

export DOCS_HOME=$HOSTFILES_HOME/docs

export LISTS_HOME=$COMMON_DOCS_HOME/lists

export RDOCS_HOME=$RFILES_HOME/docs

export DOWNLOADS_HOME="$HOME/Downloads"

export IMPORTANT_HOME=$COMMON_DOCS_HOME/IMPORTANT

export KNOWLEDGE_HOME=$DOCS_HOME/knowledge

export SCREENSHOTS_HOME=$HOSTFILES_HOME/screenshots

export SCREENSHOT_NAME=$HOSTNAME

export ANDROID_HOME=/usr/local/Cellar/android-sdk

export DATA_LOADER_PATH=/Applications/LexiLoader_v30.app/Contents/Resources/Java/Dataloader.jar

export USEFUL_HOME=$DOCS_HOME/useful

export AWS_CONFIG="$HOME/.aws/config"

export PICTURES_HOME="$GOOGLE_DRIVE/pictures/pictures"

export PHOTOS_HOME="$GOOGLE_DRIVE/pictures/photos"

export GOOD_PHOTOS_HOME="$GOOGLE_DRIVE/pictures/photos/good_pictures_of_me"


###############################################################################
# Files
###############################################################################
export PAFONRC="$HOME/.pafonrc"

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

export DEFAULT_GIT_URL="git@github.com:robinrob"

export BREWLIST=$DOTFILES_BASE_HOME/config/files/homebrew.txt

export SPELLCHECK_IGNORES=$DOTFILES_BASE_HOME/config/files/spellcheck_ignores.txt

export GDOC_TEMPLATE=$GOOGLE_DRIVE/new_document.gdoc

export BOOKMARKS_PATH=$LISTS_HOME/bookmarks.txt

export WORKBOOKMARKS_PATH=$LISTS_HOME/work_bookmarks.txt

typeset -T BOOKMARKS bookmarks
bookmarks=($BOOKMARKS_PATH $LISTS_HOME/books.txt)

export BOOKMARKS_ALIAS_PATH=$ZDOT_HOME/bookmarks.zsh

export ALIASES_PATH=$ZDOT_HOME/aliases.zsh

typeset -T ALIAS_FILES alias_files

alias_files=($ALIASES_PATH $BOOKMARKS_ALIAS_PATH)

# export GIT_SSH=$DOTFILES_BASE_HOME/sh/ssh-git.sh


###############################################################################
# Applications
###############################################################################
export MACVIM_VERSION=8.0-145_1

export CSGO_HOME=$HOME/Library/Application\ Support/Steam/SteamApps/common/Counter-Strike\ Global\ Offensive/csgo

export CSGO_SCREENSHOTS=$CSGO_HOME/screenshots

export CSGO_CONFIG=$CSGO_HOME/cfg/config.cfg

export OCTAVE_HOME=/usr/local/Cellar/octave/4.0.0

export SUBLIMETEXT_HOME="$HOME/Library/Application Support/Sublime Text 3"

export CHROME_PATH="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

export GIMP_PATH="/Applications/GIMP.app/Contents/MacOS/GIMP"

export GIMP_HOME="$HOME/.gimp"

export gimp_dir="$HOME/.gimp"

export ADOBE_PATH="/Applications/Adobe\ Reader.app/Contents/MacOS/AdobeReader"

export INTELLIJ_VERSION=14
# export INTELLIJ_VERSION=2017.3

export INTELLIJ_IDEA="IntelliJ IDEA $INTELLIJ_VERSION"
export INTELLIJ_IDEA_PREFS_HOME="$HOME/Library/Preferences/IntelliJIdea$INTELLIJ_VERSION"

# export INTELLIJ_IDEA="IdeaIC$INTELLIJ_VERSION"
# export INTELLIJ_IDEA_LIB="INTELLIJ_IDEA"

export INTELLIJ_IDEA_HOME="/Applications/$INTELLIJ_IDEA.app/Contents/MacOS"

export INTELLIJ_IDEA_PATH="$INTELLIJ_IDEA_HOME/idea"

export INTELLIJ_CONFIG="$INTELLIJ_IDEA_PREFS_HOME/keymaps/Robin.xml"

export INTELLIJ_COLORS="$INTELLIJ_IDEA_PREFS_HOME/colors"

export INTELLIJ_COMMUNITY="IntelliJ IDEA CE"

export PYCHARM="Pycharm CE"

export WEBSTORM="WebStorm"


###############################################################################
# Cocos
###############################################################################
export COCOS_HOME="/usr/local/Library/cocos2d-x-3.16"

export COCOS_LITE_HOME="/usr/local/Library/cocos2d-js-v3.6-lite"

export COCOS_CONSOLE_ROOT=$COCOS_HOME/tools/cocos2d-console/bin

export ANT_ROOT=/usr/local/bin

export NDK_ROOT=/usr/local/Cellar/android-ndk/r10e/

export JS_TESTS_HOME="$COCOS_HOME/tests/js-tests"

export NODE_PATH=/usr/lib/node_modules

export GULPFILE_HOME="$JS_HOME/projects/gulpfile"

export GULPFILE_PATH="$GULPFILE_HOME/gulpfile.js"

export GIT_QUICKSAVE_MSG="Quick-save."


###############################################################################
# Docker
###############################################################################
export DOCKER_HOST=tcp://192.168.59.103:2376

export DOCKER_CERT_PATH=/Users/msl/.boot2docker/certs/boot2docker-vm

export DOCKER_TLS_VERIFY=1


###############################################################################
# Pyenv
###############################################################################
export PYENV_ROOT=/usr/local/Library/pyenv


###############################################################################
# Function/alias variables
###############################################################################
export TRUE_VALUE="yes"

export TRUE="yes"

export FALSE=no

export TO_DO="do"

export TO_READ=read

export TO_WATCH=watch

export TO_LEARN=learn

export USE_PYTHON=1

export USE_RUBY=1

export SAYCMD_OVERRIDE=0

###############################################################################
# Misc
###############################################################################


###############################################################################
# Fundamental constants
###############################################################################
export e="2.71828182845904523536028747135266249775724709369995"

export PI="3.14159265358979323846264338327950288419716939937510"


###############################################################################
# Physical constants
###############################################################################
export G="6.674e-11"

export k="1.38e-23"

export N="6.022e23"

export h="6.626e-34"


###############################################################################
# Shell color names & codes
###############################################################################
source $ZDOT_HOME/color_codes.zsh
