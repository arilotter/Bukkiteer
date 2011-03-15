-- launchServer.applescript
-- Bukkiteer

-- Created by Ari on 11-03-08.
-- Copyright 2011 __MyCompanyName__. All rights reserved.




on clicked theObject
	
	set server_data to "Macintosh HD:Applications:Bukkiteer:server_data" --PATH TO server_data
	set server_update to display dialog "Update your server?" buttons {"Cancel", "Yes", "No"}
	if button returned of server_update is "Yes" then
		tell application "Finder"
			if not (exists folder server_data) then make new folder at "Macintosh HD:Applications:Bukkiteer" with properties {name:"server_data"}
			tell application "Terminal"
				activate
				do script "cd /Applications/Bukkiteer/server_data; clear; curl -O http://ci.bukkit.org/job/dev-CraftBukkit/lastSuccessfulBuild/artifact/target/craftbukkit-0.0.1-SNAPSHOT.jar; mv craftbukkit-0.0.1-SNAPSHOT.jar craftbukkit.jar; clear; java -Xmx1G -Xms1G -jar craftbukkit.jar" in front window
			end tell
		end tell
	else if button returned of server_update is "No" then
		tell application "Finder"
			if not (exists file "Macintosh HD:Applications:Bukkiteer:server_data:craftbukkit.jar") then
				set updaterun to display dialog "Update must be run at least once!" buttons {"Update", "Cancel"}
				tell application "Terminal"
					activate
					do script "cd /Applications/Bukkiteer/server_data; clear; curl -O http://ci.bukkit.org/job/dev-CraftBukkit/lastSuccessfulBuild/artifact/target/craftbukkit-0.0.1-SNAPSHOT.jar; mv craftbukkit-0.0.1-SNAPSHOT.jar craftbukkit.jar; clear; java -Xmx1G -Xms1G -jar craftbukkit.jar" in front window
				end tell
			else
				tell application "Terminal"
					activate
					do script "cd /Applications/Bukkiteer/server_data; clear; java -Xmx1G -Xms1G -jar craftbukkit.jar" in front window
				end tell
			end if
		end tell
	end if
	
end clicked