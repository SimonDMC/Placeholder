# called by simondmc:core/hint/sys, activates glowy bois in level 1

# furnace
execute unless block 7 101 -8 air run summon armor_stand 7 101 -8 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# campfire
execute unless block -9 100 3 air run summon armor_stand -9 100 3 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# fuel input
summon armor_stand 9 101 22 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# coal
summon armor_stand 13 103 -4 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# crafting table
execute if score global crane matches 2 run summon armor_stand 0 103 22 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}