FasdUAS 1.101.10   ��   ��    k             l     ��  ��      oldServer.applescript     � 	 	 ,   o l d S e r v e r . a p p l e s c r i p t   
  
 l     ��  ��     
 Bukkiteer     �      B u k k i t e e r      l     ��������  ��  ��        l     ��  ��    "  Created by Ari on 11-03-09.     �   8   C r e a t e d   b y   A r i   o n   1 1 - 0 3 - 0 9 .      l     ��  ��    = 7 Copyright 2011 __MyCompanyName__. All rights reserved.     �   n   C o p y r i g h t   2 0 1 1   _ _ M y C o m p a n y N a m e _ _ .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��        l     ��������  ��  ��         l      �� ! "��   !wq set server_data to "/Applications/Bukkiteer/server_data/"
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
	end if     " � # #�   s e t   s e r v e r _ d a t a   t o   " / A p p l i c a t i o n s / B u k k i t e e r / s e r v e r _ d a t a / " 
 	 s e t   s e r v e r _ u p d a t e   t o   d i s p l a y   d i a l o g   " U p d a t e   y o u r   s e r v e r ? "   b u t t o n s   { " Y e s " ,   " N o " } 
 	 i f   s e r v e r _ u p d a t e   i s   " Y e s "   t h e n 
 	 	 t e l l   a p p l i c a t i o n   " F i n d e r " 
 	 	 	 i f   n o t   ( e x i s t s   f o l d e r   s e r v e r _ d a t a )   t h e n   m a k e   n e w   f o l d e r   s e r v e r _ d a t a 
 	 	 e n d   t e l l 
 	 	 t e l l   a p p l i c a t i o n   " T e r m i n a l "   t o   a c t i v a t e 
 	 	 t e l l   a p p l i c a t i o n   " T e r m i n a l " 
 	 	 	 d o   s c r i p t   " c d   s e r v e r _ d a t a ;   c u r l   - O   h t t p : / / c i . b u k k i t . o r g / j o b / d e v - C r a f t B u k k i t / l a s t S u c c e s s f u l B u i l d / a r t i f a c t / t a r g e t / c r a f t b u k k i t - 0 . 0 . 1 - S N A P S H O T . j a r ;   m v   c r a f t b u k k i t - 0 . 0 . 1 - S N A P S H O T . j a r   c r a f t b u k k i t . j a r ;   j a v a   - X m x 1 G   - X m s 1 G   - j a r   c r a f t b u k k i t . j a r " 
 	 	 e n d   t e l l 
 	 e l s e   i f   s e r v e r _ u p d a t e   i s   " N o "   t h e n 
 	 	 s e t   o u t p u t   t o   d o   s h e l l   s c r i p t   ( " j a v a   - X m x 1 G   - X m s 1 G   - j a r   c r a f t b u k k i t . j a r " ) 
 	 	 i f   o u t p u t   c o n t a i n s   " U n a b l e   t o   a c c e s s   j a r f i l e   c r a f t b u k k i t . j a r "   t h e n 
 	 	 	 d i s p l a y   d i a l o g   " Y o u   m u s t   r u n   u p d a t e   a t   l e a s t   o n c e   b e f o r e   l a u n c h i n g   s e r v e r . " 
 	 	 e n d   i f 
 	 e n d   i f      $ % $ l     ��������  ��  ��   %  & ' & l     ��������  ��  ��   '  (�� ( j     �� )�� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier ) m      * * � + + * o l d S e r v e r . a p p l e s c r i p t��       �� , *��   , ���� 60 asdscriptuniqueidentifier ASDScriptUniqueIdentifier ascr  ��ޭ