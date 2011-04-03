-- Bukkiteer.applescript
-- Bukkiteer

--  Created by Ari on 11-03-08.
--  Copyright 2011 __MyCompanyName__. All rights reserved.

property prefsLocation : ""
property prefsFile : ""
property monsters : ""
property animals : ""
property maxplayers : ""
property pvp : ""
property spawnprotection : ""
property prefUpdate : ""
property prefAutoUpdate : ""

on launched theObject
	set prefPaneNibLoaded to false
	tell user defaults
		make new default entry at end of default entries with properties {name:"prefUpdate", contents:prefUpdate}
		make new default entry at end of default entries with properties {name:"prefAutoUpdate", contents:prefAutoUpdate}
	end tell
	tell user defaults
		set prefUpdate to contents of default entry "prefUpdate"
		set prefAutoUpdate to contents of default entry "prefAutoUpdate"
	end tell
end launched
on idle
	set x to do shell script "ps cax | awk '/java/{print $5}'"
	if x = "java" then
		set title of button "launchServer" of window "main" to "Stop Server"
		-- display dialog "Stop"
	else
		set title of button "launchServer" of window "main" to "Start Server"
		-- display dialog "Start"
	end if
	return 1
end idle