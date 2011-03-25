-- oldServer.applescript
-- Bukkiteer

-- Created by Ari on 11-03-09.
-- Copyright 2011 __MyCompanyName__. All rights reserved.


(* set server_data to "/Applications/Bukkiteer/server_data/"
	set server_update to display dialog "Update your server?" buttons {"Yes", "No"}
	if server_update is "Yes" then
		tell application "Finder"
			if not (exists folder server_data) then make new folder server_data
		end tell
		tell application "Terminal" to activate
		tell application "Terminal"
			do script "cd server_data; curl -O http://ci.bukkit.org/job/dev-CraftBukkit/lastSuccessfulBuild/artifact/target/craftbukkit-0.0.1-SNAPSHOT.jar; mv craftbukkit-0.0.1-SNAPSHOT.jar craftbukkit.jar; java -Xmx1G -Xms1G -jar craftbukkit.jar"
		end tell
	else if server_update is "No" then
		set output to do shell script ("java -Xmx1G -Xms1G -jar craftbukkit.jar")
		if output contains "Unable to access jarfile craftbukkit.jar" then
			display dialog "You must run update at least once before launching server."
		end if
	end if *)
