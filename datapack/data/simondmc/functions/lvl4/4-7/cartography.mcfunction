# ticking function, controls the cartography map expansion

# replace upgraded map
execute as @a[nbt={Inventory:[{id:"minecraft:filled_map",tag:{map:2}}]}] run tag @s add replacemap
execute as @a[nbt={Inventory:[{id:"minecraft:filled_map",tag:{map:2}}]}] run scoreboard players set map 4 1
execute as @a[tag=replacemap] run clear @s filled_map{map:2}
execute as @a[tag=replacemap] run give @s filled_map{map:1}
tag @a remove replacemap

# paper proximity
execute as @e[tag=paper] at @s if entity @a[distance=..3] run data merge entity @s {CustomNameVisible:1b}
execute as @e[tag=paper] at @s unless entity @a[distance=..3] run data merge entity @s {CustomNameVisible:0b}