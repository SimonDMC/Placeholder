# called by simondmc:core/hint/sys, activates glowy bois in level 3

# launch water
summon armor_stand 1029 100 1025 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# campfire
execute unless block 1008 101 1025 air run summon armor_stand 1008 100.5 1025 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# dead bush
execute unless block 1013 101 1030 air run summon armor_stand 1013 101 1030 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# armor stand barrel
summon armor_stand 1023 101 1027 {Team:"red",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# leaf to place moss on
summon armor_stand 1018 109 1026 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# spruce slab chest
summon armor_stand 1016 118 1021 {Team:"red",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# prong #2 barrel
summon armor_stand 1015 122 1022 {Team:"red",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# scaffolding barrel
summon armor_stand 1014 115 1019 {Team:"red",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# exit path of honey tower
summon armor_stand 1014 119 1024 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# emerald barrel
summon armor_stand 1019 114 1033 {Team:"red",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# axe shulker
summon armor_stand 1000 101 1001 {Team:"red",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# anvil
summon armor_stand 1000 102 994 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# crafting table
summon armor_stand 1002 102 994 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# moss block
execute unless block 1016 104 1020 air run summon armor_stand 1016 104 1020 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# sapling
execute if predicate simondmc:lvl3/3-2 unless score global tree matches 1 run summon armor_stand 1068 103 1029 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# berries
execute if predicate simondmc:lvl3/3-2 run summon armor_stand 1059 101 1015 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
execute if predicate simondmc:lvl3/3-2 run summon armor_stand 1059 101 1041 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# cubed house gate
execute if predicate simondmc:lvl3/3-2 run summon armor_stand 1076 101 1014 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# cubed house scaffolding
execute if predicate simondmc:lvl3/3-2 run summon armor_stand 1077 102 1013 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# feather barrel
execute if predicate simondmc:lvl3/3-2 run summon armor_stand 1078 106 1018 {Team:"red",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# composter
execute if predicate simondmc:lvl3/3-2 run summon armor_stand 1075 101 1043 {Team:"orange",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# helmet barrel
execute if predicate simondmc:lvl3/3-2 run summon armor_stand 1076 101 1039 {Team:"red",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}
# vault house shulker
execute if predicate simondmc:lvl3/3-2 run summon armor_stand 1084 101 1027 {Team:"red",Glowing:1b,Marker:1b,Invisible:1b,Tags:["glower"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}