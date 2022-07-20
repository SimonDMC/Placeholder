# ticking function, controls the stuff from 1-2, most code is taken straight from lvl 1 with small adjustments
# code duplicate due to tag system, easier than making it cross-compatible and loads less functions total

# pickup axe
execute as @e[tag=axe] at @s as @a[tag=started,distance=..1.3] run give @s iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:nether_wart"],HideFlags:2,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]} 1
execute as @e[tag=axe] at @s as @a[tag=started,distance=..1.3] run playsound entity.item.pickup master @s ~ ~ ~ 0.5
# this is atrocious, i had to rewrite the entire system cuz it sometimes didnt work and i couldnt figure out why
execute as @e[tag=axe] at @s as @a[tag=started,distance=..1.3] run scoreboard objectives add 4_wood mined:oak_wood
execute as @e[tag=axe] at @s as @a[tag=started,distance=..1.3] run scoreboard objectives add 4_wart mined:nether_wart
execute as @e[tag=axe] at @s as @a[tag=started,distance=..1.3] run scoreboard objectives add 4_planks crafted:oak_planks
execute as @e[tag=axe] at @s as @a[tag=started,distance=..1.3] run scoreboard objectives add 4_sticks crafted:stick
execute as @e[tag=axe] at @s as @a[tag=started,distance=..1.3] run scoreboard objectives add 4_axe dummy
execute as @e[tag=axe] at @s as @a[tag=started,distance=..1.3] run advancement revoke @a only simondmc:util/jump
execute as @e[tag=axe] at @s as @a[tag=started,distance=..1.3] run kill @e[tag=axe]

# axe custom item damage sys
scoreboard players reset total 4_axe
scoreboard players operation total 4_axe += @a[tag=started] 4_wood
scoreboard players operation total 4_axe += @a[tag=started] 4_wart

execute if score total 4_axe matches 1 unless score given 4_axe matches 1 as @a[tag=started] if score @s 4_wood matches 1.. run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:nether_wart"],HideFlags:2,Damage:42,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute if score total 4_axe matches 1 run scoreboard players set given 4_axe 1
execute if score total 4_axe matches 2 unless score given 4_axe matches 2 as @a[tag=started] if score @s 4_wood matches 1.. run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:nether_wart"],HideFlags:2,Damage:84,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute if score total 4_axe matches 2 run scoreboard players set given 4_axe 2
execute if score total 4_axe matches 3 unless score given 4_axe matches 3 as @a[tag=started] if score @s 4_wood matches 1.. run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:nether_wart"],HideFlags:2,Damage:126,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute if score total 4_axe matches 3 run scoreboard players set given 4_axe 3
execute if score total 4_axe matches 4 unless score given 4_axe matches 4 as @a[tag=started] if score @s 4_wood matches 1.. run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:nether_wart"],HideFlags:2,Damage:168,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute if score total 4_axe matches 4 run scoreboard players set given 4_axe 4
execute if score total 4_axe matches 5 unless score given 4_axe matches 5 as @a[tag=started] if score @s 4_wart matches 1.. run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:nether_wart"],HideFlags:2,Damage:210,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute if score total 4_axe matches 5 unless score given 4_axe matches 5 as @a[tag=started] if score @s 4_wood matches 1.. unless score @s 4_wart matches 1.. run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:nether_wart"],HideFlags:2,Damage:210,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute if score total 4_axe matches 5 run scoreboard players set given 4_axe 5
execute if score total 4_axe matches 6 unless score given 4_axe matches 6 as @a[tag=started] if score @s 4_wood matches 1.. run clear @s iron_axe
execute if score total 4_axe matches 6 unless score given 4_axe matches 6 as @a[tag=started] if score @s 4_wood matches 1.. at @s run playsound entity.item.break master @s
execute if score total 4_axe matches 6 run scoreboard players set given 4_axe 6


# crafting soft-lock prevention
scoreboard players operation global 4_planks += @a[tag=started] 4_planks
scoreboard players operation global 4_sticks += @a[tag=started] 4_sticks

execute if score global 4_planks matches 8.. run recipe take @a[tag=started] oak_planks
execute if score global 4_planks matches 12 as @a[tag=started] if score @s 4_planks matches 12 run clear @s oak_planks 4
execute if score global 4_planks matches 12 as @a[tag=started] if score @s 4_planks matches 12 run give @s oak_log
execute if score global 4_planks matches 16 as @a[tag=started] if score @s 4_planks matches 16 run clear @s oak_planks 8
execute if score global 4_planks matches 16 as @a[tag=started] if score @s 4_planks matches 16 run give @s oak_log 2
execute if score global 4_planks matches 20 as @a[tag=started] if score @s 4_planks matches 20 run clear @s oak_planks 12
execute if score global 4_planks matches 20 as @a[tag=started] if score @s 4_planks matches 20 run give @s oak_log 3
execute if score global 4_sticks matches 8.. run recipe take @a[tag=started] stick
execute if score global 4_sticks matches 12 as @a[tag=started] if score @s 4_sticks matches 12 run clear @s stick 4
execute if score global 4_sticks matches 12 as @a[tag=started] if score @s 4_sticks matches 12 run give @s oak_planks 2
execute if score global 4_sticks matches 16 as @a[tag=started] if score @s 4_sticks matches 16 run clear @s stick 8
execute if score global 4_sticks matches 16 as @a[tag=started] if score @s 4_sticks matches 16 run give @s oak_planks 4

scoreboard players reset @a[tag=started] 4_planks
scoreboard players reset @a[tag=started] 4_sticks

# replaces fake nbt pickaxes with real pickaxes
execute as @a[tag=started] if score @s wooden_pickaxe matches 1.. run clear @s tube_coral
execute as @a[tag=started] if score @s wooden_pickaxe matches 1.. run give @s wooden_pickaxe{CanDestroy:["minecraft:stone"],display:{Name:'{"text":"Stone-Breaking Pickaxe","italic":false}',Lore:['{"text":" "}','{"text":"Particularly good at","color":"dark_gray","italic":false}','{"text":"breaking stone.","color":"dark_gray","italic":false}']},HideFlags:2}
execute as @a[tag=started] if score @s wooden_pickaxe matches 2 run give @s stick 2
execute as @a[tag=started] if score @s wooden_pickaxe matches 2 run give @s oak_planks 3
execute as @a[tag=started] if score @s wooden_pickaxe matches 1.. run recipe take @a[tag=started] simondmc:wooden_pickaxe
execute as @a[tag=started] if score @s wooden_pickaxe matches 1.. run scoreboard players reset @s wooden_pickaxe

execute as @a[tag=started] if score @s stone_pickaxe matches 1 run clear @s brain_coral
execute as @a[tag=started] if score @s stone_pickaxe matches 1 run give @s stone_pickaxe{CanDestroy:["minecraft:coal_ore"],display:{Name:'{"text":"Coal-Breaking Pickaxe","italic":false}',Lore:['{"text":" "}','{"text":"Particularly good at","color":"dark_gray","italic":false}','{"text":"breaking coal.","color":"dark_gray","italic":false}']},HideFlags:2}
execute as @a[tag=started] if score @s stone_pickaxe matches 1 run scoreboard players reset @s stone_pickaxe

# gravel convert
execute as @e[type=item,nbt={Item:{id:"minecraft:gravel"}}] run data merge entity @s {Item:{id:"gravel",tag:{CanPlaceOn:["tuff"],Enchantments:[{}]}}}

# pickaxe custom item damage sys
execute as @a[tag=started] if score @s stone matches 1 if score pickaxe2 break matches 2 run clear @a[tag=started] wooden_pickaxe
execute as @a[tag=started] if score @s stone matches 1 if score pickaxe2 break matches 2 at @s run playsound entity.item.break master @s
execute as @a[tag=started] if score @s stone matches 1 if score pickaxe2 break matches 1 run item replace entity @s weapon.mainhand with wooden_pickaxe{CanDestroy:["minecraft:stone"],display:{Name:'{"text":"Stone-Breaking Pickaxe","italic":false}',Lore:['{"text":" "}','{"text":"Particularly good at","color":"dark_gray","italic":false}','{"text":"breaking stone.","color":"dark_gray","italic":false}']},HideFlags:2,Damage:40}
execute as @a[tag=started] if score @s stone matches 1 unless score pickaxe2 break matches 1.. run item replace entity @s weapon.mainhand with wooden_pickaxe{CanDestroy:["minecraft:stone"],display:{Name:'{"text":"Stone-Breaking Pickaxe","italic":false}',Lore:['{"text":" "}','{"text":"Particularly good at","color":"dark_gray","italic":false}','{"text":"breaking stone.","color":"dark_gray","italic":false}']},HideFlags:2,Damage:20}

execute as @a[tag=started] if score @s coal matches 1 run clear @a[tag=started] stone_pickaxe
execute as @a[tag=started] if score @s coal matches 1 at @s run playsound entity.item.break master @s

execute as @a[tag=started] if score @s stone matches 1 run scoreboard players add pickaxe2 break 1
scoreboard players reset @a[tag=started] stone
scoreboard players reset @a[tag=started] coal

# crafting system fail-safe
execute store result score pcount 4 run clear @r oak_planks 0
execute store result score scount 4 run clear @r stick 0

execute if score pcount 4 matches 20.. run give @r oak_log 3
execute if score pcount 4 matches 20.. run clear @a oak_planks 12

execute if score scount 4 matches 16.. run give @r oak_planks 4
execute if score scount 4 matches 16.. run clear @a stick 8