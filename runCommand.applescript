-- runCommand.applescript
-- Bukkiteer

-- Created by Ari on 11-04-02.
-- Copyright 2011 __MyCompanyName__. All rights reserved.


on clicked theObject
	set x to do shell script "ps cax | awk '/java/{print $5}'"
	if x = "java" then
		set command to contents of text field "textArea" of window "main"
		tell application "Terminal"
			do script command in window 1
		end tell
		set contents of text field "textArea" of window "main" to ""
	else
		display dialog "You must launch the server before running commands."
	end if
end clicked