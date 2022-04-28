# called by simondmc:core/hint/sys, activates glowy bois in level 2

# crafting table
summon armor_stand 18 100 30 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# barrel
execute unless score given paused matches 1 run summon armor_stand 21 107 66 {Team:"red",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# sand
execute if score given paused matches 1 unless block 34 102 53 air run summon armor_stand 34 102 53 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
execute if score given paused matches 1 unless block 36 106 27 air run summon armor_stand 36 106 27 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
execute if score given paused matches 1 unless block 48 108 44 air run summon armor_stand 48 108 44 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
execute if score given paused matches 1 unless block 57 112 47 air run summon armor_stand 57 112 47 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# polished deepslate
execute if score given paused matches 1 run summon armor_stand 30 105 40 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}