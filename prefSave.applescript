-- prefSave.applescript
-- Bukkiteer

-- Created by Ari on 11-03-29.
-- Copyright 2011 __MyCompanyName__. All rights reserved.


on clicked theObject
	if state of button "prevPvp" of window "prefWindow" is 0 then
		set pvp to false
	else
		set pvp to true
	end if
	tell user defaults
		set contents of default entry "prefUpdate" to prefUpdate
		set contents of default entry "prefAutoUpdate" to prefAutoUpdate
	end tell
	call method "synchronize" of object user defaults
end clicked