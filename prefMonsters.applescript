-- prefMonsters.applescript
-- Bukkiteer

-- Created by Ari on 11-03-10.
-- Copyright 2011 __MyCompanyName__. All rights reserved.


on clicked theObject
	tell button "prefMonsters" of window 1
		if monsters is "true" then
			set monsters to "false"
		else
			set monsters to "true"
		end if
	end tell
end clicked