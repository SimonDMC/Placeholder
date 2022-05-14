# called by simondmc:core/hint/sys, activates glowy bois in level 2

## 2-1
# sand
execute unless score crafted gray_concrete_powder matches 1 unless block 12 100 33 air run summon armor_stand 12 100 33 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
execute unless score crafted gray_concrete_powder matches 1 unless block 14 102 32 air run summon armor_stand 14 102 32 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
execute unless score crafted gray_concrete_powder matches 1 unless block 22 100 33 air run summon armor_stand 22 100 33 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
execute unless score crafted gray_concrete_powder matches 1 unless block 23 101 32 air run summon armor_stand 23 101 32 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# gravel
execute unless score crafted gray_concrete_powder matches 1 unless block 11 100 30 air run summon armor_stand 11 100 30 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
execute unless score crafted gray_concrete_powder matches 1 unless block 19 99 53 air run summon armor_stand 19 99 53 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
execute unless score crafted gray_concrete_powder matches 1 unless block 23 97 58 air run summon armor_stand 23 97 58 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
execute unless score crafted gray_concrete_powder matches 1 unless block 23 98 54 air run summon armor_stand 23 98 54 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# crafting table
summon armor_stand 18 100 30 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}

## 2-2
# barrel
execute unless score given paused matches 1 if score crafted gray_concrete_powder matches 1 run summon armor_stand 21 107 66 {Team:"red",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# piston
execute unless score given paused matches 1 if score crafted gray_concrete_powder matches 1 run summon armor_stand 15 101 53 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# powder
execute unless score given paused matches 1 if score crafted gray_concrete_powder matches 1 run summon armor_stand 15 102 53 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# magma block
execute unless score given paused matches 1 if score crafted gray_concrete_powder matches 1 run summon armor_stand 27 105 55 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}

## 2-3
# 2-3 sand
execute if score given paused matches 1 unless block 34 102 53 air run summon armor_stand 34 102 53 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
execute if score given paused matches 1 unless block 36 106 27 air run summon armor_stand 36 106 27 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
execute if score given paused matches 1 unless block 48 108 44 air run summon armor_stand 48 108 44 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
execute if score given paused matches 1 unless block 57 112 47 air run summon armor_stand 57 112 47 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# polished deepslate
execute if score given paused matches 1 run summon armor_stand 30 105 40 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# copper plate
execute if score given paused matches 1 run summon armor_stand 41 107.2 41 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}