# ticking function, handles everything pickaxe-related

# teleports cobblestone to nearest player after 5 seconds of being dropped
scoreboard players add @e[type=item,nbt={Item:{id:"minecraft:cobblestone"}}] item_time 1
execute as @e[type=item,nbt={Item:{id:"minecraft:cobblestone"}}] if score @s item_time matches 100 run tp @s @p

# replaces fake nbt pickaxes with real pickaxes
execute as @a[tag=started] if score @s wooden_pickaxe matches 1 run clear @s tube_coral
execute as @a[tag=started] if score @s wooden_pickaxe matches 1 run give @s wooden_pickaxe{CanDestroy:["minecraft:stone"],display:{Name:'{"text":"Stone-Breaking Pickaxe","italic":false}',Lore:['{"text":" "}','{"text":"Particularly good at","color":"dark_gray","italic":false}','{"text":"breaking stone.","color":"dark_gray","italic":false}']},HideFlags:2}
execute as @a[tag=started] if score @s wooden_pickaxe matches 1 run scoreboard players reset @s wooden_pickaxe

execute as @a[tag=started] if score @s stone_pickaxe matches 1 run clear @s brain_coral
execute as @a[tag=started] if score @s stone_pickaxe matches 1 run give @s stone_pickaxe{CanDestroy:["minecraft:coal_ore"],display:{Name:'{"text":"Coal-Breaking Pickaxe","italic":false}',Lore:['{"text":" "}','{"text":"Particularly good at","color":"dark_gray","italic":false}','{"text":"breaking coal.","color":"dark_gray","italic":false}']},HideFlags:2}
execute as @a[tag=started] if score @s stone_pickaxe matches 1 run scoreboard players reset @s stone_pickaxe

# custom item damage sys
execute as @a[tag=started] if score @s stone matches 1 if score pickaxe break matches 2 run clear @a[tag=started] wooden_pickaxe
execute as @a[tag=started] if score @s stone matches 1 if score pickaxe break matches 2 at @s run playsound entity.item.break master @s
execute as @a[tag=started] if score @s stone matches 1 if score pickaxe break matches 1 run item replace entity @s weapon.mainhand with wooden_pickaxe{CanDestroy:["minecraft:stone"],display:{Name:'{"text":"Stone-Breaking Pickaxe","italic":false}',Lore:['{"text":" "}','{"text":"Particularly good at","color":"dark_gray","italic":false}','{"text":"breaking stone.","color":"dark_gray","italic":false}']},HideFlags:2,Damage:40}
execute as @a[tag=started] if score @s stone matches 1 unless score pickaxe break matches 1.. run item replace entity @s weapon.mainhand with wooden_pickaxe{CanDestroy:["minecraft:stone"],display:{Name:'{"text":"Stone-Breaking Pickaxe","italic":false}',Lore:['{"text":" "}','{"text":"Particularly good at","color":"dark_gray","italic":false}','{"text":"breaking stone.","color":"dark_gray","italic":false}']},HideFlags:2,Damage:20}

execute as @a[tag=started] if score @s coal matches 1 run clear @a[tag=started] stone_pickaxe
execute as @a[tag=started] if score @s coal matches 1 at @s run playsound entity.item.break master @s

execute as @a[tag=started] if score @s stone matches 1 run scoreboard players add pickaxe break 1
scoreboard players reset @a[tag=started] stone
scoreboard players reset @a[tag=started] coal

# stone dig down soft lock patch
execute as @a[tag=started] if predicate simondmc:lvl1/stone_stuck at @s unless block ~ ~-.1 ~ air unless block ~-1 ~1 ~ air unless block ~1 ~1 ~ air unless block ~ ~1 ~-1 air unless block ~ ~1 ~1 air run title @s actionbar {"text":">:(","color":"dark_red"}
execute as @a[tag=started] if predicate simondmc:lvl1/stone_stuck at @s unless block ~ ~-.1 ~ air unless block ~-1 ~1 ~ air unless block ~1 ~1 ~ air unless block ~ ~1 ~-1 air unless block ~ ~1 ~1 air run effect give @s levitation 1 3 true
execute as @a[tag=started] if predicate simondmc:lvl1/stone_stuck at @s if block ~-1 ~ ~ air if block ~1 ~ ~ air if block ~ ~ ~-1 air if block ~ ~ ~1 air run effect clear @s levitation