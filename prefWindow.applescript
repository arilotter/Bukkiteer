-- prefWindow.applescript
-- Bukkiteer

-- Created by Ari on 11-03-13.
-- Copyright 2011 __MyCompanyName__. All rights reserved.

on opened theObject
	set prefsLocation to "/Applications/Bukkiteer/server_data/server.properties"
	set prefsFile to read prefsLocation
	set monsters to characters 16 thru -1 of paragraph 5 of prefsFile as string
	set animals to characters 15 thru -1 of paragraph 7 of prefsFile as string
	set maxplayers to characters 13 thru -1 of paragraph 8 of prefsFile as string
	set pvp to characters 5 thru -1 of paragraph 10 of prefsFile as string
	set spawnprotection to characters 18 thru -1 of paragraph 13 of prefsFile as string
	display dialog "Monsters=" & monsters
	display dialog "Animals=" & animals
	display dialog "Maximum amount of players =" & maxplayers
	display dialog "Pvp=" & pvp
	display dialog "Spawn Protection Radius=" & spawnprotection
end opened
