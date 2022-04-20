# ticking function, handles everything crane-related

## IRON -> COPPER -> GOLD -> AMETHYST

# lamp fix because it deativates occasionally
execute if block 9 112 22 minecraft:redstone_lamp[lit=false] run setblock 9 112 22 minecraft:redstone_lamp[lit=true]

# furnace particle handling
execute if score global crane matches 1 run particle flame 9.5 101.5 22.5 .2 .2 .2 0 1 force
execute if score global crane matches 2 run particle flame 9.5 101.5 22.5 .25 .25 .25 0 1 force
execute if score global crane matches 3 run particle flame 9.5 101.5 22.5 .25 .25 .25 0 5 force

# furnace click handling
execute as @a if score @s clicked matches 1.. as @s[nbt={SelectedItem:{id:"minecraft:charcoal"}}] run function simondmc:lvl1/add_coal
scoreboard players reset @a clicked

# makes sure all villagers have invisibility lmao
effect give @e[type=villager,tag=crane] invisibility 1000000 0 true

# not crane but fall in hole narrator
execute as @a if predicate simondmc:lvl1/in_pit unless score in_pit crane matches 1 run scoreboard players set id narrator 2
execute as @a if predicate simondmc:lvl1/in_pit run scoreboard players set in_pit crane 1