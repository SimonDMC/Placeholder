# ticking function, controls the start lobby area

# spawn outside lobby prevention
execute unless score oob intro matches 1 as @a[x=-17,y=85,z=-15,distance=20..,tag=!spec] run gamemode adventure @s
execute unless score oob intro matches 1 as @a[x=-17,y=85,z=-15,distance=20..,tag=!spec] run tp @s -11 85 -15 -90 1.3 

# realms survival prevention
execute as @a[gamemode=survival] run gamemode adventure @s

# upwards boots door open
execute as @a[x=-6,y=91,z=-15,dx=2,tag=!spec] run setblock -5 94 -16 redstone_block
execute unless entity @a[x=-6,y=91,z=-15,dx=2,tag=!spec] run setblock -5 94 -16 air

# upwards boots functionality
execute as @a[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Special:1b}}]}] at @s run particle dust_color_transition 0.612 0.765 1.000 1 0.231 0.361 0.580 ~ ~ ~ .2 0 .2 0.2 1 force 

# version check button
execute if block -12 86 -9 birch_button[powered=true] positioned -12 86 -9 as @p run function simondmc:core/version
execute if block -12 86 -9 birch_button[powered=true] run setblock -12 86 -9 birch_button

# start button
execute if block -6 86 -15 polished_blackstone_button[powered=true] run function simondmc:start/start
execute if block -6 86 -15 polished_blackstone_button[powered=true] run setblock -6 86 -15 polished_blackstone_button[facing=west]

# spam title in start area
title @a times 0 100 0
title @a subtitle {"translate":"§cUse '/trigger rp' to download resource pack."}
title @a title {"translate":"§c§lRESOURCE PACK OFF"}

# particlesss
execute at @e[tag=eureka] run particle dust_color_transition 0.769 0.435 0.000 1 0.349 0.200 0.000 ~ ~-1.2 ~ .17 0 .17 0 4 normal
execute at @e[tag=simon] run particle dust_color_transition 0.000 1.000 0.000 1 0.000 0.349 0.000 ~ ~-1.2 ~ .17 0 .17 0 4 normal

# item animation
scoreboard players add item intro 1
execute if score item intro matches 120 run scoreboard players set item intro 0

execute if score item intro matches 0 run data merge entity @e[tag=item,limit=1] {Item:{id:"pink_candle",Count:1b,tag:{CustomModelData:0}}}
execute if score item intro matches 20 run data merge entity @e[tag=item,limit=1] {Item:{id:"pink_candle",Count:1b,tag:{CustomModelData:1}}}
execute if score item intro matches 40 run data merge entity @e[tag=item,limit=1] {Item:{id:"pink_candle",Count:1b,tag:{CustomModelData:2}}}
execute if score item intro matches 60 run data merge entity @e[tag=item,limit=1] {Item:{id:"pink_candle",Count:1b,tag:{CustomModelData:3,Enchantments:[{id:"minecraft:protection",lvl:1s}]}}}
execute if score item intro matches 80 run data merge entity @e[tag=item,limit=1] {Item:{id:"pink_candle",Count:1b,tag:{CustomModelData:4,Enchantments:[{id:"minecraft:protection",lvl:1s}]}}}
execute if score item intro matches 100 run data merge entity @e[tag=item,limit=1] {Item:{id:"pink_candle",Count:1b,tag:{CustomModelData:5,Enchantments:[]}}}

# credit display
execute as @a[x=-15,y=86,z=-24,distance=..5] unless score @s credit matches 1 run title @s actionbar ["",{"text":"\u2139 ","color":"gold"},{"text":"Try clicking the statues!","color":"yellow"}]

# click statue villager
execute as @a[x=-15,y=86,z=-24,distance=..5] if score @s clicked matches 1.. run tellraw @s ["",{"text":"\n"},{"text":"-- From the creators of Upwards --","color":"light_purple"},{"text":"\n"},{"text":"Coding, Models & Narration: ","color":"yellow"},{"text":"SimonDMC","color":"gold"},{"text":"\n"},{"text":"> ","color":"green"},{"text":"simondmc.com","color":"green","clickEvent":{"action":"open_url","value":"https://simondmc.com"}},{"text":"\n"},{"text":"Building, Story & Game Design: ","color":"yellow"},{"text":"EurekaX","color":"gold"},{"text":"\n"},{"text":"> ","color":"red"},{"text":"youtube.com/EurekaX","color":"red","clickEvent":{"action":"open_url","value":"https://youtube.com/EurekaX"}}]
execute as @a[x=-15,y=86,z=-24,distance=..5] if score @s clicked matches 1.. at @s run playsound minecraft:entity.experience_orb.pickup master @s
execute as @a[x=-15,y=86,z=-24,distance=..5] if score @s clicked matches 1.. run scoreboard players set @s credit 1

# click info villager
execute as @a unless entity @s[x=-15,y=86,z=-24,distance=..5] if score @s clicked matches 1.. run scoreboard players set t_info intro 1
scoreboard players reset @a clicked

# make sure statue villagers are invisible
effect give @e[tag=nameclick] minecraft:invisibility 1000000 1 true

# test audio button
execute if block -30 86 -22 birch_button[powered=true] positioned -30 86 -22 as @p at @s run playsound narrator.test_audio voice @s
execute if block -30 86 -22 birch_button[powered=true] run setblock -30 86 -22 birch_button[facing=east]

# sneaking easter egg
execute as @a[x=-14,y=86,z=-24,dy=1] if predicate simondmc:sneaking run scoreboard players add sim_sneak intro 1
execute unless entity @a[x=-14,y=86,z=-24,dy=1,predicate=simondmc:sneaking] run scoreboard players reset sim_sneak intro
execute if score sim_sneak intro matches 100 run tellraw @a "§ahello it is me simon da minecraft player i hope you have a good day :thumbsup:"
execute if score sim_sneak intro matches 100 run scoreboard players reset sim_sneak intro

execute as @a[x=-16,y=86,z=-24,dy=1] if predicate simondmc:sneaking run scoreboard players add eur_sneak intro 1
execute unless entity @a[x=-16,y=86,z=-24,dy=1,predicate=simondmc:sneaking] run scoreboard players reset eur_sneak intro
execute if score eur_sneak intro matches 100 run tellraw @a "§6it is me, the bear. i hope you're have a nice day. WHO ATE ALL THE LEMONS (by lemons i mean tomatoes)"
execute if score eur_sneak intro matches 100 run scoreboard players reset eur_sneak intro

# clear secret ladder
clear @a[x=-24,y=89,z=-4,distance=..1] ladder