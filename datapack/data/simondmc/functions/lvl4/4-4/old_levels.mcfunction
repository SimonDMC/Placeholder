# ticking function, controls the stuff from 1-2, most code is taken straight from lvl 1 with small adjustments
# code duplicate due to tag system, easier than making it cross-compatible and loads less functions total

# pickup axe, also does some recipe stuff cuz why not
execute as @e[tag=axe] at @s as @a[distance=..1.3] run give @s iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:nether_wart"],HideFlags:2,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]} 1
execute as @e[tag=axe] at @s as @a[distance=..1.3] run playsound entity.item.pickup master @s ~ ~ ~ 0.5
execute as @e[tag=axe] at @s as @a[distance=..1.3] run kill @e[tag=axe]

# axe custom item damage sys
execute as @a if score @s oak_woodTEMP matches 1 if score axe2 break matches 5 run clear @a iron_axe
execute as @a if score @s oak_woodTEMP matches 1 if score axe2 break matches 5 at @s run playsound entity.item.break master @s
execute as @a if score @s netherwartTEMP matches 1 if score axe2 break matches 5 run clear @a iron_axe
execute as @a if score @s netherwartTEMP matches 1 if score axe2 break matches 5 at @s run playsound entity.item.break master @s
# remove oak breakability after 5 oak breaks
execute as @a if score @s oak_wood matches 5 unless score @s netherwart matches 1 unless score break netherwart matches 1 run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:nether_wart"],HideFlags:2,Damage:210,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute as @a if score @s oak_wood matches 5 unless score @s netherwart matches 1 run scoreboard players set break netherwart 1
execute as @a if score @s oak_woodTEMP matches 1 if score axe2 break matches 4 if score @s netherwart matches 1 run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:nether_wart"],HideFlags:2,Damage:210,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute as @a if score @s netherwartTEMP matches 1 if score axe2 break matches 4 if score @s netherwart matches 1 run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:nether_wart"],HideFlags:2,Damage:210,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute as @a if score @s oak_woodTEMP matches 1 if score axe2 break matches 3 run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:nether_wart"],HideFlags:2,Damage:168,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute as @a if score @s netherwartTEMP matches 1 if score axe2 break matches 3 run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:nether_wart"],HideFlags:2,Damage:168,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute as @a if score @s oak_woodTEMP matches 1 if score axe2 break matches 2 run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:nether_wart"],HideFlags:2,Damage:126,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute as @a if score @s netherwartTEMP matches 1 if score axe2 break matches 2 run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:nether_wart"],HideFlags:2,Damage:126,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute as @a if score @s oak_woodTEMP matches 1 if score axe2 break matches 1 run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:nether_wart"],HideFlags:2,Damage:84,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute as @a if score @s netherwartTEMP matches 1 if score axe2 break matches 1 run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:nether_wart"],HideFlags:2,Damage:84,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute as @a if score @s oak_woodTEMP matches 1 unless score axe2 break matches 1.. run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:nether_wart"],HideFlags:2,Damage:42,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute as @a if score @s netherwartTEMP matches 1 unless score axe2 break matches 1.. run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:nether_wart"],HideFlags:2,Damage:42,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}

execute as @a if score @s netherwartTEMP matches 1 run scoreboard players add axe2 break 1
execute as @a if score @s oak_woodTEMP matches 1 run scoreboard players add axe2 break 1
scoreboard players reset @a oak_woodTEMP
scoreboard players reset @a netherwartTEMP

# crafting soft-lock prevention
scoreboard players operation global craft_planks += @a craft_planks
scoreboard players operation global craft_sticks += @a craft_sticks

execute if score global craft_planks matches 8.. run recipe take @a oak_planks
execute if score global craft_planks matches 12 as @a if score @s craft_planks matches 12 run clear @s oak_planks 4
execute if score global craft_planks matches 12 as @a if score @s craft_planks matches 12 run give @s oak_log
execute if score global craft_planks matches 16 as @a if score @s craft_planks matches 16 run clear @s oak_planks 8
execute if score global craft_planks matches 16 as @a if score @s craft_planks matches 16 run give @s oak_log 2
execute if score global craft_planks matches 20 as @a if score @s craft_planks matches 20 run clear @s oak_planks 12
execute if score global craft_planks matches 20 as @a if score @s craft_planks matches 20 run give @s oak_log 3
execute if score global craft_sticks matches 8.. run recipe take @a stick
execute if score global craft_sticks matches 12 as @a if score @s craft_sticks matches 12 run clear @s stick 4
execute if score global craft_sticks matches 12 as @a if score @s craft_sticks matches 12 run give @s oak_planks 2
execute if score global craft_sticks matches 16 as @a if score @s craft_sticks matches 16 run clear @s stick 8
execute if score global craft_sticks matches 16 as @a if score @s craft_sticks matches 16 run give @s oak_planks 4

scoreboard players reset @a craft_planks
scoreboard players reset @a craft_sticks

# replaces fake nbt pickaxes with real pickaxes
execute as @a if score @s wooden_pickaxe matches 1.. run clear @s tube_coral
execute as @a if score @s wooden_pickaxe matches 1.. run give @s wooden_pickaxe{CanDestroy:["minecraft:stone"],display:{Name:'{"text":"Stone-Breaking Pickaxe","italic":false}',Lore:['{"text":" "}','{"text":"Particularly good at","color":"dark_gray","italic":false}','{"text":"breaking stone.","color":"dark_gray","italic":false}']},HideFlags:2}
execute as @a if score @s wooden_pickaxe matches 2 run give @s stick 2
execute as @a if score @s wooden_pickaxe matches 2 run give @s oak_planks 3
execute as @a if score @s wooden_pickaxe matches 1.. run recipe take @a simondmc:wooden_pickaxe
execute as @a if score @s wooden_pickaxe matches 1.. run scoreboard players reset @s wooden_pickaxe

execute as @a if score @s stone_pickaxe matches 1 run clear @s brain_coral
execute as @a if score @s stone_pickaxe matches 1 run give @s stone_pickaxe{CanDestroy:["minecraft:coal_ore"],display:{Name:'{"text":"Coal-Breaking Pickaxe","italic":false}',Lore:['{"text":" "}','{"text":"Particularly good at","color":"dark_gray","italic":false}','{"text":"breaking coal.","color":"dark_gray","italic":false}']},HideFlags:2}
execute as @a if score @s stone_pickaxe matches 1 run scoreboard players reset @s stone_pickaxe

# gravel convert
execute as @e[type=item,nbt={Item:{id:"minecraft:gravel"}}] run data merge entity @s {Item:{id:"gravel",tag:{CanPlaceOn:["tuff"]}}}

# pickaxe custom item damage sys
execute as @a if score @s stone matches 1 if score pickaxe2 break matches 2 run clear @a wooden_pickaxe
execute as @a if score @s stone matches 1 if score pickaxe2 break matches 2 at @s run playsound entity.item.break master @s
execute as @a if score @s stone matches 1 if score pickaxe2 break matches 1 run item replace entity @s weapon.mainhand with wooden_pickaxe{CanDestroy:["minecraft:stone"],display:{Name:'{"text":"Stone-Breaking Pickaxe","italic":false}',Lore:['{"text":" "}','{"text":"Particularly good at","color":"dark_gray","italic":false}','{"text":"breaking stone.","color":"dark_gray","italic":false}']},HideFlags:2,Damage:40}
execute as @a if score @s stone matches 1 unless score pickaxe2 break matches 1.. run item replace entity @s weapon.mainhand with wooden_pickaxe{CanDestroy:["minecraft:stone"],display:{Name:'{"text":"Stone-Breaking Pickaxe","italic":false}',Lore:['{"text":" "}','{"text":"Particularly good at","color":"dark_gray","italic":false}','{"text":"breaking stone.","color":"dark_gray","italic":false}']},HideFlags:2,Damage:20}

execute as @a if score @s coal matches 1 run clear @a stone_pickaxe
execute as @a if score @s coal matches 1 at @s run playsound entity.item.break master @s

execute as @a if score @s stone matches 1 run scoreboard players add pickaxe2 break 1
scoreboard players reset @a stone
scoreboard players reset @a coal