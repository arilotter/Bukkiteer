-- Bukkiteer.applescript
-- Bukkiteer

--  Created by Ari on 11-03-08.
--  Copyright 2011 __MyCompanyName__. All rights reserved.

property prefUpdate : "0"
property prefAutoUpdate : "0"
on launched theObject
	set prefPaneNibLoaded to false
end launched

on idle
	set x to do shell script "ps cax | awk '/java/{print $5}'"
	if x = "java" then
		set title of button "launchServer" of window "main" to "Stop"
		set image of button "launchServer" of window "main" to load image "StopButton"
		-- display dialog "Stop"
	else
		set title of button "launchServer" of window "main" to "Start"
		set image of button "launchServer" of window "main" to load image "StartButton"
		-- display dialog "Start"
	end if
	return 1
end idle

on should close theObject
	set scriptpath to ((resource path of main bundle as string) & "/Scripts/killOnClose.scpt")
	run script POSIX file scriptpath
end should close