-- prefPvp.applescript
-- Bukkiteer

-- Created by Ari on 11-03-10.
-- Copyright 2011 __MyCompanyName__. All rights reserved.


on clicked theObject
	tell button "prefPvp" of window 1
		if pvp is "true" then
			set pvp to "false"
		else
			set pvp to "true"
		end if
	end tell
end clicked