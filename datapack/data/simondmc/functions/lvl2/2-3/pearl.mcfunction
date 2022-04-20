# ticking function, handles everything related to ender pearls

# border limits
execute as @e[type=ender_pearl,tag=!display] unless predicate simondmc:lvl2/pearl unless score global pearl_inform matches 3.. run tellraw @a {"color": "red","text": "Out of bounds!"}
execute as @e[type=ender_pearl,tag=!display] unless predicate simondmc:lvl2/pearl run scoreboard players add global pearl_inform 1
execute as @e[type=ender_pearl,tag=!display] unless predicate simondmc:lvl2/pearl run kill @s

# replenish
execute as @a if score @s pearl matches 1 unless entity @e[type=ender_pearl,tag=!display] run give @s ender_pearl{display:{Name:'{"text":"Replenishing Ender Pearl","color":"light_purple","italic":false}',Lore:['{"text":"A magical force seems","color":"gray"}','{"text":"to prevent you from","color":"gray"}','{"text":"wasting it...","color":"gray"}']},Enchantments:[{}]}
execute as @a if score @s pearl matches 1 unless entity @e[type=ender_pearl,tag=!display] run scoreboard players reset @s pearl
execute as @e[type=ender_pearl] if predicate simondmc:lvl2/pearl_success run scoreboard players set @a pearl 2
execute as @e[type=ender_pearl] if predicate simondmc:lvl2/pearl_success run setblock 33 107 36 air
execute as @e[type=ender_pearl] if predicate simondmc:lvl2/pearl_success run tp @a 52.51 111.00 48.50 -89.71 12.47
execute as @e[type=ender_pearl] if predicate simondmc:lvl2/pearl_success run kill @s

# player in door failsafe
execute as @a if predicate simondmc:lvl2/pearl_success unless score @s pearl matches 2 run clear @a ender_pearl
execute as @a if predicate simondmc:lvl2/pearl_success unless score @s pearl matches 2 run setblock 33 107 36 air
execute as @a if predicate simondmc:lvl2/pearl_success unless score @s pearl matches 2 run scoreboard players set @a pearl 2

# endermites begone
kill @e[type=endermite]

# kill pearl if shot while paused
execute as @a if score @s pearl2 matches 1 if score global paused matches 1 run kill @e[type=ender_pearl,tag=!display]
execute as @a if score @s pearl2 matches 1 if score global paused matches 1 run tellraw @s {"text": "[The pearl merely slips out of your hands]","color": "gray","italic": true}
execute as @a if score @s pearl2 matches 1 run scoreboard players reset @s pearl2

# pickup pearl
execute as @e[tag=pearl] at @s as @a[distance=..1.8] run give @s ender_pearl{display:{Name:'{"text":"Replenishing Ender Pearl","color":"light_purple","italic":false}',Lore:['{"text":"A magical force seems","color":"gray"}','{"text":"to prevent you from","color":"gray"}','{"text":"wasting it...","color":"gray"}']},Enchantments:[{}]}
execute as @e[tag=pearl] at @s as @a[distance=..1.8] run kill @e[tag=pearl]

# pickup particles
execute as @e[tag=pearl] at @s run particle minecraft:portal ~ ~ ~ .1 .1 .1 .2 2

# display name
execute if score oanim lever matches 4.. run data merge entity @e[tag=pearl,limit=1] {CustomNameVisible:1b}
execute unless score oanim lever matches 4.. run data merge entity @e[tag=pearl,limit=1] {CustomNameVisible:0b}