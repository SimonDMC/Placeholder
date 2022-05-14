# ticking function, handles all things related to gray concrete powder

# crafting
execute as @a[tag=started] if score @s gray_concrete_powder matches 1 run clear @s budding_amethyst
execute as @a[tag=started] if score @s gray_concrete_powder matches 1 run give @s soul_soil{CanPlaceOn:["minecraft:tuff","piston"]}
# narrator line
execute as @a[tag=started] if score @s gray_concrete_powder matches 1 run scoreboard players set id narrator 6
execute as @a[tag=started] if score @s gray_concrete_powder matches 1 run scoreboard players set crafted gray_concrete_powder 1
# refresh hint system
execute as @a[tag=started] if score @s gray_concrete_powder matches 1 if score global hint matches 1 run function simondmc:core/hint/refresh_hint
execute as @a[tag=started] if score @s gray_concrete_powder matches 1 run scoreboard players reset @s gray_concrete_powder

# dropped/broken item conversion
execute as @e[type=item,nbt={Item:{id:"minecraft:gray_concrete_powder"}}] run data merge entity @s {Item:{id:"soul_soil",tag:{CanPlaceOn:["tuff","piston"]}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:soul_soil"}}] run data merge entity @s {Item:{id:"soul_soil",tag:{CanPlaceOn:["tuff","piston"]}}}

# breaking of flying concrete
execute if block 26 104 55 gray_concrete_powder run function simondmc:lvl2/2-2/replace_concrete

# make sure piston is placed correctly
execute if block 15 101 53 minecraft:piston[extended=false] run setblock 15 101 53 minecraft:piston[facing=up]

# flying concrete summon
execute if block 15 103 53 minecraft:gray_concrete_powder run summon falling_block 15 104 53 {BlockState:{Name:"minecraft:gray_concrete_powder"},Time:1,Motion:[0.405,1.0,0.075]}
execute if block 15 103 53 minecraft:gray_concrete_powder run setblock 15 103 53 air
execute if block 15 103 53 minecraft:soul_soil run summon falling_block 15 104 53 {BlockState:{Name:"minecraft:gray_concrete_powder"},Time:1,Motion:[0.405,1.0,0.075]}
execute if block 15 103 53 minecraft:soul_soil run setblock 15 103 53 air

# remove barriers if 2-2 completed
execute if block 26 105 55 gray_concrete run setblock 27 107 55 air
execute if block 26 105 55 gray_concrete run setblock 28 107 56 air

# replace soil with powder
execute as @a[tag=started] if score @s soul_soil matches 1..100 run scoreboard players add global soil_timer 1
execute if score global soil_timer matches 10 at @a[tag=started] run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 gray_concrete_powder replace soul_soil
execute if score global soil_timer matches 10 run scoreboard players reset @a[tag=started] soul_soil
execute if score global soil_timer matches 10 run scoreboard players reset global soil_timer

# visibility of dropped item after breaking (so it doesnt get stuck in the sawblade)
execute as @e[type=item,x=26,y=103.5,z=55,distance=..1] run tp @s 26.5 104 56.5

# fall through button
execute if block 14 102 53 gray_concrete_powder run summon falling_block 14 102 53 {BlockState:{Name:"minecraft:gray_concrete_powder"},Time:1}
execute if block 14 102 53 gray_concrete_powder run setblock 14 102 53 air