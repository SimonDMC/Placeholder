# ticking function, adds description to sand and gravel

# conversion
execute as @e[type=item,nbt={Item:{id:"minecraft:gravel"}}] run data merge entity @s {Item:{id:"gravel",tag:{display:{Lore:['{"text":"Not for crafting purposes!","color":"dark_gray","italic":false}']}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:sand"}}] run data merge entity @s {Item:{id:"sand",tag:{display:{Lore:['{"text":"Not for crafting purposes!","color":"dark_gray","italic":false}']}}}}