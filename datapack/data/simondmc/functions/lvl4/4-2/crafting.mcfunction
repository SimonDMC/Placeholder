# ticking function, handles crafting of explosives

execute as @a if score @s tnt4 matches 1 run clear @s brain_coral_block
execute as @a if score @s tnt4 matches 1 run give @s tnt{CanPlaceOn:["crying_obsidian"]}
execute as @a if score @s tnt4 matches 1 run scoreboard players reset @s tnt4

execute as @a if score @s crystal matches 1 run clear @s brain_coral_fan
execute as @a if score @s crystal matches 1 run give @s end_crystal{CanPlaceOn:["obsidian"]}
execute as @a if score @s crystal matches 1 run scoreboard players reset @s crystal

execute as @a if score @s anchor matches 1 run clear @s bubble_coral_block
execute as @a if score @s anchor matches 1 run give @s respawn_anchor{CanPlaceOn:["netherite_block"]}
execute as @a if score @s anchor matches 1 run scoreboard players reset @s anchor

execute as @a if score @s fire_charge matches 1 run clear @s bubble_coral_fan
execute as @a if score @s fire_charge matches 1 run give @s fire_charge{CanPlaceOn:["blast_furnace"]}
execute as @a if score @s fire_charge matches 1 run scoreboard players reset @s fire_charge