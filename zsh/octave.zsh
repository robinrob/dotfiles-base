#!/usr/bin/env zsh

# brew reinstall octave --with-x11
# brew install fltk
# brew install gnuplot --with-x11

echo 'setenv ("GNUTERM", "X11")' >> /usr/local/Cellar/octave/4.0.0/share/octave/site/m/startup/octaverc
echo "PS1('❯❯ ')" >> /usr/local/Cellar/octave/4.0.0/share/octave/site/m/startup/octaverc

