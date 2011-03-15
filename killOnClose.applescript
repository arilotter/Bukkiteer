-- killOnClose.applescript
-- Bukkiteer

-- Created by Ari on 11-03-09.
-- Copyright 2011 __MyCompanyName__. All rights reserved.

on clicked theObject
	set x to do shell script "ps cax | awk '/java/{print $5}'"
	if x = "java" then
		tell application "Terminal"
			do script "stop" in window 1
			delay 3
			quit
		end tell
		quit me
	else
		quit me
	end if
end clicked
