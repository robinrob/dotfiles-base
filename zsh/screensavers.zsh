#!/usr/bin/env zsh

local -r SystemLocation=/Library/Screen\ Savers/Default\ Collections
local -r MyScreensavers=$SystemLocation/Robin


sudo rm -rf $MyScreensavers
sudo mkdir $MyScreensavers
sudo cp $BACKGROUNDS_HOME/* $MyScreensavers
