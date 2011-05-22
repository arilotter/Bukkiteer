-- Bukkiteer.applescript
-- Bukkiteer

--  Created by Ari on 11-03-08.
--  Copyright 2011 __MyCompanyName__. All rights reserved.

property prefsLocation : "0"
property prefsFile : "0"
property monsters : "0"
property animals : "0"
property maxplayers : "0"
property pvp : "0"
property spawnprotection : "0"
property prefUpdate : "0"
property prefAutoUpdate : "0"
property prefWeb : "0"

on launched theObject
	set prefPaneNibLoaded to false
	tell user defaults
		make new default entry at end of default entries with properties {name:"prefUpdate", contents:prefUpdate}
		make new default entry at end of default entries with properties {name:"prefAutoUpdate", contents:prefAutoUpdate}
		make new default entry at end of default entries with properties {name:"prefWeb", contents:prefWeb}
	end tell
	tell user defaults
		set prefUpdate to contents of default entry "prefUpdate"
		set prefAutoUpdate to contents of default entry "prefAutoUpdate"
		set prefWeb to contents of default entry "prefWeb"
	end tell
	
	--web admin
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