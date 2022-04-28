# ticking function, adds description to sand and gravel

# conversion
execute as @e[type=item,nbt={Item:{id:"minecraft:gravel"}}] run data merge entity @s {Item:{id:"gravel",tag:{display:{Name:'{"text":"Construction Gravel","italic":false}',Lore:['{"text":"Ideal for crafting.","color":"gray"}']}}}}
execute unless score crafted gray_concrete_powder matches 1 as @e[type=item,nbt={Item:{id:"minecraft:sand"}}] run data merge entity @s {Item:{id:"sand",tag:{display:{Name:'{"text":"Construction Sand","italic":false}',Lore:['{"text":"Ideal for crafting.","color":"gray"}']}}}}