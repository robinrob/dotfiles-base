#!/usr/bin/env zsh

if ! [[ -d $SCREENSAVERS_HOME ]]
then
  sudo mkdir $SCREENSAVERS_HOME
fi

sudo rm $SCREENSAVERS_HOME/*
sudo cp $BACKGROUNDS_HOME/* $SCREENSAVERS_HOME/
