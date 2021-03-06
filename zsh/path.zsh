###############################################################################
#
# Path
###############################################################################

typeset -U path

local Dirs
Dirs=(
  $EC2_HOME/bin
  $HOME/.rvm/bin
  $LOCAL_HOME/bin
  /Applications/Postgres.app/Contents/Versions/9.3/bin/
  $HOME/.rvm/bin
  $COCOS_CONSOLE_ROOT
  /usr/local/Library/pngquant
  $ANT_ROOT
  $NDK_ROOT
  $NDK_MODULE_PATH
  /usr/local/Library/anaconda3/bin
  /usr/local/Library/weechat-2.1/bin
  /usr/local/Library/git-number
  /usr/local/Library/exercism-mac-64bit
  ./node_modules/.bin
  /usr/local/Cellar/nvm/0.34.0
  /usr/local/Cellar/node/5.7.0/bin
  /usr/local/Cellar/octave/4.0.0/bin
  /usr/local/Cellar/macvim/$MACVIM_VERSION/bin
  /usr/local/Cellar/octave/4.0.0/bin
  /usr/local/bin
  /usr/local/lib
  /Applications/Postgres.app/Contents/Versions/latest/bin
  $GOPATH/bin
)

for dir in $Dirs
do
  path=($path $dir)
done
