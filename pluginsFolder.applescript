-- pluginsFolder.applescript
-- Bukkiteer

-- Created by Ari on 11-03-08.
-- Copyright 2011 __MyCompanyName__. All rights reserved.


on clicked theObject
	set the_path to "/Applications/Bukkiteer/server_data/plugins"
	
	--No more edits.
	
	set the_folder to (POSIX file the_path) as alias
	tell application "Finder"
		activate
		if window 1 exists then
			set target of window 1 to the_folder
		else
			reveal the_folder
		end if
	end tell
end clicked
