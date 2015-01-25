#!/usr/bin/env zsh

local -r SystemLocation=/Library/Screen\ Savers/Default\ Collections
local -r MyScreensavers=$SystemLocation/Robin


if [[ ! -d $MyScreensavers ]]
then
  sudo mkdir $MyScreensavers
  sudo cp $BACKGROUNDS_HOME/* $MyScreensavers
fi
