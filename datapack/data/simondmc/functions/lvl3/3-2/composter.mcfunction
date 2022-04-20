# ticking function, controlls sweet berries and composter

# poll together berry clicks
scoreboard players operation global berries += @a berries
scoreboard players reset @a berries

# predictable composter
execute if score global berries matches 1 run setblock 1075 101 1043 composter[level=0]
execute if score global berries matches 2 run setblock 1075 101 1043 composter[level=0]
execute if score global berries matches 3 run setblock 1075 101 1043 composter[level=1]
execute if score global berries matches 4 run setblock 1075 101 1043 composter[level=1]
execute if score global berries matches 5 run setblock 1075 101 1043 composter[level=1]
execute if score global berries matches 6 run setblock 1075 101 1043 composter[level=2]
execute if score global berries matches 7 run setblock 1075 101 1043 composter[level=2]
execute if score global berries matches 8 run setblock 1075 101 1043 composter[level=3]
execute if score global berries matches 9 run setblock 1075 101 1043 composter[level=3]
execute if score global berries matches 10 run setblock 1075 101 1043 composter[level=3]
execute if score global berries matches 11 run setblock 1075 101 1043 composter[level=4]
execute if score global berries matches 12 run setblock 1075 101 1043 composter[level=4]
execute if score global berries matches 13 run setblock 1075 101 1043 composter[level=4]
execute if score global berries matches 14 run setblock 1075 101 1043 composter[level=5]
execute if score global berries matches 15 run setblock 1075 101 1043 composter[level=5]
execute if score global berries matches 16 run setblock 1075 101 1043 composter[level=5]
execute if score global berries matches 17 run setblock 1075 101 1043 composter[level=6]
execute if score global berries matches 18 run setblock 1075 101 1043 composter[level=6]
execute if score global berries matches 19 run setblock 1075 101 1043 composter[level=6]
execute if score global berries matches 20 run setblock 1075 101 1043 composter[level=7]
execute if score global berries matches 20 run scoreboard players reset global berries

# placeable bone meal
execute as @e[type=item,nbt={Item:{id:"minecraft:bone_meal"}}] run data merge entity @s {Item:{id:"bone_meal",tag:{CanPlaceOn:["oak_sapling"]}}}

# hard-coded berry loot table because the normal one doesn't work for right clicking
execute as @e[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] unless entity @s[type=item,nbt={Item:{tag:{Converted:1b}}}] run data merge entity @s {Item:{id:"sweet_berries",Count:2b,tag:{Converted:1b}}}