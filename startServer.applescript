tell application "Terminal"
	activate
	tell application "System Events"
		if "Terminal" is not in name of processes then launch application "Terminal"
		tell process "Terminal"
			set frontmost to true
			if (count windows) is 0 then keystroke "n" using command down
		end tell
	end tell
	do script "cd /Applications/Bukkiteer/server_data; clear; java -Xmx1G -Xms1G -jar craftbukkit.jar" in window 0
end tell