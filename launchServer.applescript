-- launchServer.applescript
-- Bukkiteer

-- Created by Ari on 11-03-24.
-- Copyright 2011 __MyCompanyName__. All rights reserved.
on clicked theObject
	if title of button "launchServer" of window 1 is "Start" then
		try
			set server_jar to (POSIX file "/Applications/Bukkiteer/server_data/craftbukkit.jar") as alias
		on error
			display dialog "Update must be run at least once!" buttons {"Update", "Cancel"}
			set scriptpath to ((resource path of main bundle as string) & "/Scripts/updateServer.scpt")
			run script POSIX file scriptpath
		end try
		set scriptpath to ((resource path of main bundle as string) & "/Scripts/startServer.scpt")
		run script POSIX file scriptpath
	else if title of button "launchServer" of window 1 is "Stop" then
		tell application "Terminal"
			do script "stop" in window 1
			set x to do shell script "ps cax | awk '/java/{print $5}'"
			repeat while x = "java"
				set x to do shell script "ps cax | awk '/java/{print $5}'"
			end repeat
			quit
		end tell
	end if
end clicked