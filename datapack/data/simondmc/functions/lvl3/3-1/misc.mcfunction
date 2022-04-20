# ticking function, random stuff that doesnt deserve its own function

# make sure player doesnt place slab wrongly
execute if block 1014 111 1019 spruce_slab[type=top] run setblock 1014 111 1019 spruce_slab[type=bottom]

# moss block
execute as @e[type=item,nbt={Item:{id:"minecraft:moss_block"}}] run data merge entity @s {Item:{tag:{CanPlaceOn:["spruce_leaves"]}}}

# kill charcoal item dropped from campfire
kill @e[type=item,nbt={Item:{id:"minecraft:charcoal"}}]

# make barrel accessible when on the top
execute if entity @a[x=1018,y=113,z=1029,dx=0] run fill 1019 114 1032 1019 113 1033 air replace minecraft:barrier

# make campfire bottle on forever
data modify block 1008 101 1025 CookingTimes[0] set value -1000000

# dumb hole (narrator line)
execute unless score temp_dumb_hole narrator matches 1 as @a[x=1026,y=101,z=1026,dy=1] run scoreboard players set id narrator 17
execute unless score temp_dumb_hole narrator matches 1 as @a[x=1026,y=101,z=1026,dy=1] run scoreboard players set temp_dumb_hole narrator 1

# get out of dumb hole
execute if score dumb_hole_cheat narrator matches 1 if entity @a[gamemode=!adventure] run function simondmc:lvl3/3-1/dumb_hole_cheat