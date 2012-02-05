-- updateServer.applescript
-- Bukkiteer

-- Created by Ari on 11-03-17.
-- Copyright 2011 __MyCompanyName__. All rights reserved.

set server_data to (POSIX path of "/Applications/Bukkiteer/server_data") --PATH TO server_data
tell application "Finder"
	if not (exists folder server_data) then make new folder at (POSIX path of "/Applications/Bukkiteer") with properties {name:"server_data"}
	tell application "Terminal"
		activate
		do script "cd /Applications/Bukkiteer/server_data; clear; curl -O http://ci.bukkit.org/job/dev-CraftBukkit/lastSuccessfulBuild/artifact/target/craftbukkit-0.0.1-SNAPSHOT.jar; mv craftbukkit-0.0.1-SNAPSHOT.jar craftbukkit.jar" in front window
		delay 2
		set x to do shell script "ps cax | awk '/curl/{print $5}'"
		repeat while x = "curl"
			set x to do shell script "ps cax | awk '/curl/{print $5}'"
		end repeat
		quit
	end tell
end tell