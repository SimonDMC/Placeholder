# ticking function, handles everything axe-related

# pickup axe
execute as @e[tag=axe] at @s as @a[distance=..1.3] run give @s iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:campfire"],HideFlags:2,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]} 1
execute as @e[tag=axe] at @s as @a[distance=..1.3] run playsound entity.item.pickup master @s ~ ~ ~ 0.5
execute as @e[tag=axe] at @s as @a[distance=..1.3] run kill @e[tag=axe]

# teleports oak log to nearest player after 5 seconds of being dropped
scoreboard players add @e[type=item,nbt={Item:{id:"minecraft:oak_log"}}] item_time 1
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_log"}}] if score @s item_time matches 100 run tp @s @p

# crafting soft-lock prevention
# here at simondmc industries we take pride in our crafting systems
scoreboard players operation global craft_planks += @a craft_planks
scoreboard players operation global craft_sticks += @a craft_sticks

execute if score global craft_planks matches 4..8 run recipe take @a oak_planks
execute if score global craft_planks matches 8 as @a if score @s craft_planks matches 8 run clear @s oak_planks 4
execute if score global craft_planks matches 8 as @a if score @s craft_planks matches 8 run give @s oak_log
execute if score global craft_sticks matches 4..8 run recipe take @a stick
execute if score global craft_sticks matches 8 as @a if score @s craft_sticks matches 8 run clear @s stick 4
execute if score global craft_sticks matches 8 as @a if score @s craft_sticks matches 8 run give @s oak_planks 2

scoreboard players reset @a craft_planks
scoreboard players reset @a craft_sticks

# custom item damage sys
execute as @a if score @s oak_woodTEMP matches 1 if score axe break matches 2 run clear @a iron_axe
execute as @a if score @s oak_woodTEMP matches 1 if score axe break matches 2 at @s run playsound entity.item.break master @s
execute as @a if score @s campfireTEMP matches 1 if score axe break matches 2 run clear @a iron_axe
execute as @a if score @s campfireTEMP matches 1 if score axe break matches 2 at @s run playsound entity.item.break master @s
# remove oak breakability after 2 oak breaks
execute as @a if score @s oak_wood matches 2 unless score @s campfire matches 1 run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:campfire"],HideFlags:2,Damage:166,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute as @a if score @s oak_wood matches 2 unless score @s campfire matches 1 run scoreboard players reset @s oak_wood
execute as @a if score @s oak_woodTEMP matches 1 if score axe break matches 1 if score @s campfire matches 1 run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:campfire"],HideFlags:2,Damage:166,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute as @a if score @s campfireTEMP matches 1 if score axe break matches 1 if score @s campfire matches 1 run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:campfire"],HideFlags:2,Damage:166,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute as @a if score @s oak_woodTEMP matches 1 unless score axe break matches 1.. run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:campfire"],HideFlags:2,Damage:83,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}
execute as @a if score @s campfireTEMP matches 1 unless score axe break matches 1.. run item replace entity @s weapon.mainhand with iron_axe{CanDestroy:["minecraft:oak_wood","minecraft:campfire"],HideFlags:2,Damage:83,Enchantments:[{id:"minecraft:efficiency",lvl:2s}]}

execute as @a if score @s campfireTEMP matches 1 run scoreboard players add axe break 1
execute as @a if score @s oak_woodTEMP matches 1 run scoreboard players add axe break 1
scoreboard players reset @a oak_woodTEMP
scoreboard players reset @a campfireTEMP