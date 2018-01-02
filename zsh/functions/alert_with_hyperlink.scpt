!/usr/bin/env osascript

display alert "Site is up!" message "" as critical buttons {"Quit", "Continue", "Go to website"} default button "Quit"

set response to button returned of the result

if response is "Go to website" then open location "http://your.website.of.choice"
