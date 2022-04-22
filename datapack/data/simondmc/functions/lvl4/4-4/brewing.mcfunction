# ticking function, brewing stand shenanigans are seperated cuz it was getting clumsy

# potion conversion
execute if block -1005 121 -993 brewing_stand{Items:[{Slot:0b,id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:leaping"}}]} run item replace block -1005 121 -993 container.0 with potion{display:{Lore:['{"text":"Jump Boost (**:**)","color":"blue","italic":false}']},HideFlags:32,Potion:"minecraft:long_leaping"}
execute if block -1005 121 -993 brewing_stand{Items:[{Slot:1b,id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:leaping"}}]} run item replace block -1005 121 -993 container.1 with potion{display:{Lore:['{"text":"Jump Boost (**:**)","color":"blue","italic":false}']},HideFlags:32,Potion:"minecraft:long_leaping"}
execute if block -1005 121 -993 brewing_stand{Items:[{Slot:2b,id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:leaping"}}]} run item replace block -1005 121 -993 container.2 with potion{display:{Lore:['{"text":"Jump Boost (**:**)","color":"blue","italic":false}']},HideFlags:32,Potion:"minecraft:long_leaping"}

# tick perfect soft-lock patch because the other map creator screamed at me i swear i dont want to do this anymore im so done with this
execute as @a[nbt={Inventory:[{id:"minecraft:potion",tag:{Potion:"minecraft:leaping"}}]}] run give @s potion{display:{Lore:['{"text":"Jump Boost (**:**)","color":"blue","italic":false}']},HideFlags:32,Potion:"minecraft:long_leaping"}
execute as @a[nbt={Inventory:[{id:"minecraft:potion",tag:{Potion:"minecraft:leaping"}}]}] run clear @s potion{Potion:"minecraft:leaping"}

# blaze powder lock
clear @a[x=-1003,y=120,z=-992,distance=..7] blaze_powder
item replace block -1005 121 -993 container.4 with blaze_powder

# continuous jump boost give
execute if score jump 4 matches 1 run effect give @a jump_boost 1000000 1

# brewing stand speed-up
execute store result score brewing 4 run data get block -1005 121 -993 BrewTime
execute unless score brewing 4 matches ..5 run scoreboard players operation brewing 4 -= SPEEDUP 4
execute store result block -1005 121 -993 BrewTime short 1 run scoreboard players get brewing 4
# constant
scoreboard players set SPEEDUP 4 10

# remove bottle
execute if score jump 4 matches 1 run clear @a glass_bottle

# cauldron soft-lock (:troll:)
execute if block -1002 122 -975 cauldron run summon chicken -1001.5 122.5 -974.5 {Invulnerable:1b,Passengers:[{id:"minecraft:chicken",Invulnerable:1b,CustomName:'{"text":"chicken of shame"}'}]}
execute if block -1002 122 -975 cauldron run advancement grant @a only simondmc:chicken
execute if block -1002 122 -975 cauldron run setblock -1002 122 -975 water_cauldron[level=3]
kill @e[type=item,nbt={Item:{id:"minecraft:egg"}}]

# no foot before wart
execute if block -1005 121 -993 brewing_stand{Items:[{Slot:0b,id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:awkward"}}]} run scoreboard players set foot 4 1
execute if block -1005 121 -993 brewing_stand{Items:[{Slot:1b,id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:awkward"}}]} run scoreboard players set foot 4 1
execute if block -1005 121 -993 brewing_stand{Items:[{Slot:2b,id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:awkward"}}]} run scoreboard players set foot 4 1
execute unless score foot 4 matches 1 if block -1005 121 -993 brewing_stand{Items:[{Slot:3b,id:"minecraft:rabbit_foot"}]} positioned -1005 121 -993 run playsound entity.villager.no master @p
execute unless score foot 4 matches 1 if block -1005 121 -993 brewing_stand{Items:[{Slot:3b,id:"minecraft:rabbit_foot"}]} positioned -1005 121 -993 run give @p rabbit_foot
execute unless score foot 4 matches 1 if block -1005 121 -993 brewing_stand{Items:[{Slot:3b,id:"minecraft:rabbit_foot"}]} positioned -1005 121 -993 run item replace block -1005 121 -993 container.3 with air