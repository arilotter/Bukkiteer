-- launchServer.applescript
-- Bukkiteer

-- Created by Ari on 11-03-24.
-- Copyright 2011 __MyCompanyName__. All rights reserved.


on clicked theObject
	if title of button "launchServer" of window 1 is "Start Server" then
		set server_data to (POSIX file "/Applications/Bukkiteer/server_data") as string --PATH TO server_data
		set server_update to display dialog "Update your server?" buttons {"Cancel", "Yes", "No"}
		if button returned of server_update is "Yes" then
			tell application "Finder"
				if not (exists folder server_data) then make new folder at (POSIX file "/Applications/Bukkiteer") with properties {name:"server_data"}
				tell application "Terminal"
					activate
					do script "cd /Applications/Bukkiteer/server_data; clear; curl -O http://ci.bukkit.org/job/dev-CraftBukkit/lastSuccessfulBuild/artifact/target/craftbukkit-0.0.1-SNAPSHOT.jar; mv craftbukkit-0.0.1-SNAPSHOT.jar craftbukkit.jar; clear; java -Xmx1G -Xms1G -jar craftbukkit.jar"
				end tell
			end tell
		else if button returned of server_update is "No" then
			tell application "Finder"
				if not (exists POSIX file "/Applications/Bukkiteer/server_data/craftbukkit.jar") then
					set updaterun to display dialog "Update must be run at least once!" buttons {"Update", "Cancel"}
					tell application "Finder"
						if not (exists folder server_data) then make new folder at (POSIX file "/Applications/Bukkiteer") with properties {name:"server_data"}
						tell application "Terminal"
							activate
							do script "cd /Applications/Bukkiteer/server_data; clear; curl -O http://ci.bukkit.org/job/dev-CraftBukkit/lastSuccessfulBuild/artifact/target/craftbukkit-0.0.1-SNAPSHOT.jar; mv craftbukkit-0.0.1-SNAPSHOT.jar craftbukkit.jar; clear; java -Xmx1G -Xms1G -jar craftbukkit.jar"
						end tell
					end tell
				else
					tell application "Terminal"
						activate
						do script "cd /Applications/Bukkiteer/server_data; clear; java -Xmx1G -Xms1G -jar craftbukkit.jar"
					end tell
				end if
			end tell
		end if
	else if title of button "launchServer" of window 1 is "Stop Server" then
		tell application "Terminal"
			do script "stop" in window 1
			repeat while x = "java"
				set x to do shell script "ps cax | awk '/java/{print $5}'"
			end repeat
			quit
		end tell
	end if
end clicked