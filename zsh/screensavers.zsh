#!/usr/bin/env zsh

local -r MyScreensavers=$SYSTEM_SCREENSAVERS_HOME/Robin


sudo rm -rf $MyScreensavers
sudo mkdir $MyScreensavers
sudo cp $BACKGROUNDS_HOME/* $MyScreensavers
