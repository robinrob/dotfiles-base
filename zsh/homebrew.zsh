#!/usr/bin/env zsh


cat $BREWLIST | while read package ; do
  brew install $package
done

# Others
brew install http://www.soimort.org/translate-shell/translate-shell.rb
brew uninstall macvim
brew install macvim --custom-icons --override-system-vim --with-lua --with-luajit
