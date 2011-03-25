-- prefAnimals.applescript
-- Bukkiteer

-- Created by Ari on 11-03-10.
-- Copyright 2011 __MyCompanyName__. All rights reserved.


on clicked theObject
	global animals
	tell button "prefAnimals" of window 1
		if animals is "true" then
			set animals to "false"
		else
			set animals to "true"
		end if
	end tell
end clicked