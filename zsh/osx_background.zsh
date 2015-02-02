#!/usr/bin/env zsh

# Set default wallpaper image. `DefaultDesktop.jpg` is already a symlink, and
# all wallpapers are in `/Library/Desktop Pictures/`. The default is `Wave.jpg`.
rm -rf $USER_DESKTOPDB_PATH

sudo mv -f $SYSTEM_DESKTOP_PATH $SYSTEM_DESKTOP_PATH.backup
sudo ln -s $BACKGROUNDS_HOME/$HOSTNAME.jpg $SYSTEM_DESKTOP_PATH

# Alternate method:
# osascript -e "tell application \"System Events\" to set picture of every desktop to \"$DEFAULT_DESKTOP\""
