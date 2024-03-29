#!/usr/bin/env zsh

brew install coreutils

cat $BREWLIST | while read package ; do
  brew install $package
done

# Others
brew install http://www.soimort.org/translate-shell/translate-shell.rb
brew uninstall macvim
brew install macvim --custom-icons --override-system-vim --with-lua --with-luajit

# Install Octave
# $ZDOT_HOME/octave.zsh

# Hack font
brew tap caskroom/fonts
brew cask install font-hack
