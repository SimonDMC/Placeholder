# ticking function, controls the whole 4-1 level

# snow removal
execute if block -990 104 -997 soul_wall_torch unless block -990 103 -996 air unless score snow 4 matches 1 run schedule function simondmc:lvl4/4-1/destroy_snow 40t
execute if block -990 104 -997 soul_wall_torch unless block -990 103 -996 air unless score snow 4 matches 1 run tag @a[nbt={Inventory:[{id:"minecraft:filled_map"}]}] add hasmap
execute if block -990 104 -997 soul_wall_torch unless block -990 103 -996 air unless score snow 4 matches 1 run scoreboard players set snow 4 1
execute if block -991 104 -996 soul_wall_torch unless block -990 103 -996 air unless score snow 4 matches 1 run schedule function simondmc:lvl4/4-1/destroy_snow 40t
execute if block -991 104 -996 soul_wall_torch unless block -990 103 -996 air unless score snow 4 matches 1 run tag @a[nbt={Inventory:[{id:"minecraft:filled_map"}]}] add hasmap
execute if block -991 104 -996 soul_wall_torch unless block -990 103 -996 air unless score snow 4 matches 1 run scoreboard players set snow 4 1
execute if block -990 104 -996 soul_wall_torch unless block -990 103 -996 air unless score snow 4 matches 1 run schedule function simondmc:lvl4/4-1/destroy_snow 40t
execute if block -990 104 -996 soul_wall_torch unless block -990 103 -996 air unless score snow 4 matches 1 run tag @a[nbt={Inventory:[{id:"minecraft:filled_map"}]}] add hasmap
execute if block -990 104 -996 soul_wall_torch unless block -990 103 -996 air unless score snow 4 matches 1 run scoreboard players set snow 4 1

# map replacement
clear @a[tag=hasmap] filled_map
give @a[tag=hasmap] filled_map{map:0}
tag @a remove hasmap

# getting out of the cave
execute as @a if predicate simondmc:lvl4/cave_out run setblock -987 103 -1000 lime_stained_glass
execute unless entity @a[predicate=simondmc:lvl4/cave_out] run setblock -987 103 -1000 air

# torch conversion
execute as @e[type=item,nbt={Item:{id:"minecraft:soul_torch"}}] run data merge entity @s {Item:{id:"soul_torch",tag:{CanPlaceOn:["smooth_quartz"]}}}