# called by simondmc:core/narrator whenever the enter_tree narrator line plays

gamerule doTileDrops false
setblock 1022 89 1031 air destroy
setblock 1022 90 1031 air destroy
setblock 1022 91 1031 air destroy
setblock 1022 91 1030 air destroy
setblock 1023 90 1032 air destroy
setblock 1023 89 1031 air destroy
setblock 1024 90 1032 air destroy
setblock 1023 91 1032 air destroy
setblock 1024 91 1032 air destroy
setblock 1024 91 1032 air destroy
setblock 1022 92 1031 air destroy
setblock 1023 92 1031 air destroy
setblock 1022 92 1030 air destroy
setblock 1023 92 1030 air destroy
setblock 1024 92 1031 air destroy
setblock 1024 92 1030 air destroy
setblock 1025 91 1031 air destroy
setblock 1024 91 1031 air destroy
setblock 1025 91 1030 air destroy
setblock 1025 90 1030 air destroy
setblock 1023 92 1029 air destroy
setblock 1023 92 1028 air destroy
setblock 1024 91 1029 air destroy
setblock 1025 91 1029 air destroy
setblock 1022 91 1029 air destroy
setblock 1022 91 1029 air destroy
setblock 1022 91 1028 air destroy
setblock 1024 91 1028 air destroy
setblock 1021 90 1030 air destroy
setblock 1024 90 1028 air destroy
setblock 1025 90 1031 spruce_slab[type=bottom]
setblock 1025 89 1030 spruce_slab[type=bottom]
setblock 1025 90 1029 air destroy
gamerule doTileDrops true
scoreboard players set broken tree 1
summon item 1013 96 1030 {CustomNameVisible:1b,Tags:["eyepiece"],CustomName:'{"text":"Eyepiece","color":"gold"}',Item:{id:"minecraft:bubble_coral",Count:1b,tag:{display:{Name:'{"text":"Eyepiece","color":"gold","italic":false}',Lore:['{"text":"A spyglass that can ","color":"gray"}','{"text":"reveal hidden details.","color":"gray"}']},HideFlags:1,Eyepiece:1b,Enchantments:[{id:"minecraft:efficiency",lvl:1s}]}}}