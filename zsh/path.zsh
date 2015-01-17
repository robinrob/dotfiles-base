###############################################################################
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
)

for dir in $Dirs
do
  path=($path $dir)
done
