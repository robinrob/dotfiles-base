#!/usr/bin/env zsh

###############################################################################
# Robin's additional defaults and overrides
###############################################################################

# hot corners
defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tl-modifier -int 0
defaults write com.apple.dock wvous-tr-corner -int 0
defaults write com.apple.dock wvous-tr-modifier -int 0
defaults write com.apple.dock wvous-bl-corner -int 0
defaults write com.apple.dock wvous-bl-modifier -int 0

# Hide tab bar in Safari
defaults write com.apple.Safari AlwaysShowTabBar -bool NO

# Hide hidden files in Finder
defaults write com.apple.Finder AppleShowAllFiles NO 2> /dev/null

# Change screenshot location
# http://www.tekrevue.com/tip/how-to-customize-screenshot-options-in-mac-os-x/
# killall SystemUIServer
defaults write com.apple.screencapture location $SCREENSHOTS_HOME 2> /dev/null

# Change screenshot filename prefix
defaults write com.apple.screencapture name $HOSTNAME

# Change screenshot filetype
# defaults write com.apple.screencapture type png

defaults write -g ApplePersistence -bool no 2> /dev/null

# Show ~/Library folder in Finder
chflags nohidden ~/Library/ 2> /dev/null

# Enable character menu
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Disable new Yosemite default setting that globally prevents key repeat!
defaults write -g ApplePressAndHoldEnabled -bool false

###############################################################################
# Desktop Background
###############################################################################
# $ZDOT_HOME/osx_background.zsh

###############################################################################
# Screensaver images
###############################################################################
$ZDOT_HOME/osx_screensavers.zsh

###############################################################################
# User profile images
###############################################################################
sudo cp $BACKGROUNDS_HOME/* $SYSTEM_PROFILEIMAGES_HOME/Nature

###############################################################################
# Iterm2
###############################################################################
# Iterm2 hotkey window animation duration
defaults write com.googlecode.iterm2 HotkeyTermAnimationDuration -float 0.0
