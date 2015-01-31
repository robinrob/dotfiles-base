#!/usr/bin/env zsh


for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
	"Dock" "Finder" "Mail" "Messages" "Safari" "SizeUp" "SystemUIServer" \
	"Terminal" "Transmission" "Twitter" "iCal"; do
	killall "${app}" > /dev/null 2>&1
done
print "Done. Note that some of these changes require a logout/restart to take effect."
