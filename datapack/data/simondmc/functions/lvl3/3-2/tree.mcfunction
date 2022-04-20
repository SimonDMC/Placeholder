# ticking function, does stuff relevant to the tree

# entering
execute as @a if predicate simondmc:lvl3/tree_in if score global tree matches 1 run scoreboard players set @s tree -1
# narrator line
execute as @a if predicate simondmc:lvl3/tree_in if score global tree matches 1 unless score entered tree matches 1 run scoreboard players set id narrator 20
execute as @a if predicate simondmc:lvl3/tree_in if score global tree matches 1 run scoreboard players set entered tree 1
execute as @a if predicate simondmc:lvl3/tree_in if score global tree matches 1 at @s run tp @s ~-45 ~-17 ~1

# exiting
execute as @a if predicate simondmc:lvl3/tree_out if score global tree matches 1 run scoreboard players reset @s tree
execute as @a if predicate simondmc:lvl3/tree_out if score global tree matches 1 at @s run tp @s ~45 ~17 ~-1

# particles
execute if score global tree matches 1 run particle portal 1067 104 1029 3 8 3 1 2

# place cutscene
execute as @a if score @s tree matches 1 run scoreboard players set cutscene tree 1
execute as @a if score @s tree matches 1 run scoreboard players reset @s tree

execute if score cutscene tree matches 1.. run scoreboard players add cutscene tree 1

execute if score cutscene tree matches 2 run gamemode spectator @a
execute if score cutscene tree matches 2..42 run tp @a 1062.12 101.26 1034.09 -124.56 -25.08
execute if score cutscene tree matches 22 run particle happy_villager 1067 104 1029 3 8 3 0 300
execute if score cutscene tree matches 22 run clone 14 24 -20 1 -1 0 1062 101 1018 masked
execute if score cutscene tree matches 22 run setblock 1068 101 1026 air
execute if score cutscene tree matches 22 run setblock 1067 101 1025 air
execute if score cutscene tree matches 22 run setblock 1071 101 1028 air
execute if score cutscene tree matches 22 run setblock 1070 101 1029 air
execute if score cutscene tree matches 22 run setblock 1069 102 1029 air
execute if score cutscene tree matches 22 run playsound entity.player.levelup master @a
execute if score cutscene tree matches 42 run tp @a 1057.97 100.00 1029.62 -90.38 -0.09
execute if score cutscene tree matches 42 run gamemode adventure @a
execute if score cutscene tree matches 42 run scoreboard players set global tree 1
execute if score cutscene tree matches 42 as @a[level=0] run xp set @s 1 levels