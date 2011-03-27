-- Bukkiteer.applescript
-- Bukkiteer

--  Created by Ari on 11-03-08.
--  Copyright 2011 __MyCompanyName__. All rights reserved.
on launched theObject
	set prefsLocation to ""
	set prefsFile to ""
	set monsters to ""
	set animals to ""
	set maxplayers to ""
	set pvp to ""
	set spawnprotection to ""
	set prefPaneNibLoaded to false
end launched
on idle
	set x to do shell script "ps cax | awk '/java/{print $5}'"
	if x = "java" then
		set title of button "launchServer" of window 1 to "Stop Server"
		-- display dialog "Stop"
	else
		set title of button "launchServer" of window 1 to "Start Server"
		-- display dialog "Start"
	end if
	return 1
end idle
on should close theObject
	(*Add your script here.*)
end should close
