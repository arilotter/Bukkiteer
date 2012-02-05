-- timeSet.applescript
-- Bukkiteer

-- Created by Ari on 11-04-03.
-- Copyright 2011 __MyCompanyName__. All rights reserved.



on clicked theObject
	-- set time 
	set time to (contents of slider "timeSlider" of window 2)
	display dialog time
end clicked
