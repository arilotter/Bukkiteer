-- pluginsFolder.applescript
-- Bukkiteer

-- Created by Ari on 11-03-08.
-- Copyright 2011 __MyCompanyName__. All rights reserved.


on clicked theObject
	set the_path to "/Applications/Bukkiteer/server_data/plugins/"
	set the_folder to (POSIX file the_path)
	
	tell application "Finder"
		activate
		try
			get the_folder as alias
			reveal the_folder
		on error
			set updaterun to display dialog "Update must be run at least once before trying to add plugins!" buttons {"Update", "Cancel"}
			set updateServer to load script ("/Applications/Bukkiteer/Bukkiteer.app/Contents/Resources/Scripts/updateServer.scpt" as POSIX file)
			run script updateServer
			make new folder at (POSIX file "/Applications/Bukkiteer/server_data/") with properties {name:"plugins"}
			do shell script "cd /Applications/Bukkiteer/server_data/plugins; touch exists"
		end try
	end tell
end clicked