hi hi, welcome to the inner workings of this map!
unless you know what you're doing, i would highly recommend contacting me on discord if you want to know how i did something :] 
(discord.gg/mG3QWBp)

i tried my best to comment everything, all functions should at least have what they're called by or their type 
and some comments explaining what it actually does

ticking - called every tick (given you're in that level)
other functions - called once

the functions are divided into 2 namespaces - simondmc:* and dev:*
only simondmc:* functions are ever called, and control how the map works
dev:* functions are remnants of what i used to test stuff and usually restore a one-time event that is difficult to undo otherwise (such as destroying a wall with a pattern)
they are really only there to speed up the creation of the map and take out the pain of testing stuff (also they're completely uncommented)

the functions have a somewhat organized folder structure: all level-specific code is in that level's folder, and for later levels
the folders are split into sub-levels (with the exception of :lvl4/global cuz that controls the "hallway")
then there's :core which contains all dynamic systems, such as flowers being unpickupable, :start and :end which are self-explanatory
and :transitions which controls everything happening betweening levels for easier access

lastly, there are some dynamic systems i used (again, to make things easier for myself) such as the 3 block text display,
so if you want to know why something works how it does, try checking simondmc:core/* or the tags of relevant entities :D

also in case i have to mention this, taking some code is completely fine but please dont just steal entire functions :))

- SimonDMC (eureka was also here but i wrote this whole thing)

UPDATE: we have decided to switch levels 3 and 4, but it was sort of a last-minute decision so level 4 is internally referred to as level 3 and
vice versa. i didnt really want to redo everything just due to swapping orders so that should hopefully explain 2_to_4 and 4_to_3 lmao