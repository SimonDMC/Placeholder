# called by simondmc:lvl4/4-5/evoker, resets the micro-level

playsound entity.witch.drink master @a -989 126 -999
playsound entity.generic.drink master @a -989 126 -999
effect give @e[tag=evoker] regeneration 1 0
tp @e[tag=evoker] -989 126 -999 90 0
scoreboard players set evoker 4 7
setblock -989 127 -997 oak_button[face=floor,facing=east]
clear @a tnt
clear @a pointed_dripstone
clear @a sweet_berries
clear @a water_bucket
clear @a pufferfish_bucket
clear @a flint_and_steel
clear @a campfire
clear @a bucket
give @r campfire{CanPlaceOn:["coal_block"]}
setblock -989 126 -1001 air destroy
clone -989 119 -1001 -989 119 -1001 -989 126 -1001
kill @e[type=tnt]
kill @e[type=falling_block]
fill -989 129 -999 -989 126 -999 air
setblock -989 125 -999 yellow_concrete_powder
setblock -989 126 -1000 moving_piston
kill @e[type=item,nbt={Item:{id:"minecraft:tnt"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:water_bucket"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:pufferfish_bucket"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:flint_and_steel"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:campfire"}}]
scoreboard players reset berry 4
scoreboard players reset water 4
scoreboard players reset t_water 4
scoreboard players reset tnt 4
scoreboard players reset puffer 4
scoreboard players reset fire 4
scoreboard players reset t_fire 4
scoreboard players reset campfire 4
scoreboard players reset t_campfire 4