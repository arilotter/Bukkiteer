-- runCommand.applescript
-- Bukkiteer

-- Created by Ari on 11-04-02.
-- Copyright 2011 __MyCompanyName__. All rights reserved.


on clicked theObject
	set x to do shell script "ps cax | awk '/java/{print $5}'"
	if x = "java" then
		set command to text returned of (display dialog "Enter a command to run (no slash)" default answer "help")
		display dialog command
		tell application "Terminal"
			do script command in window 1
		end tell
	else
		display dialog "You must launch the server before running commands."
	end if
end clicked
