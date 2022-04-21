# ticking function, handles everything related to water

# bucket replacement 
execute as @a[nbt={Inventory:[{id:"minecraft:bucket"}]}] run item replace entity @s weapon.mainhand with water_bucket{CanPlaceOn:["minecraft:green_glazed_terracotta"],display:{Name:'{"text":"Infinite Water Bucket","italic":false}',Lore:['{"text":" "}','{"text":"Can be placed on:","color":"gray","italic":false}','{"text":"Magma Cube","color":"dark_gray","italic":false}']},HideFlags:16}

# water drain
execute if block 26 105 55 minecraft:water run scoreboard players add global water_timer 1
execute if score global water_timer matches 10 run setblock 26 105 55 air
execute if score global water_timer matches 10 run playsound minecraft:block.fire.extinguish master @a 26 105 55 1 1.5
execute if score global water_timer matches 10 run particle minecraft:large_smoke 26 105.5 55 .4 .4 .4 0 15
execute if score global water_timer matches 10 run scoreboard players reset global water_timer

execute if block 27 105 56 minecraft:water run scoreboard players add global2 water_timer 1
execute if score global2 water_timer matches 10 run setblock 27 105 56 air
execute if score global2 water_timer matches 10 run playsound minecraft:block.fire.extinguish master @a 27 105 56 1 1.5
execute if score global2 water_timer matches 10 run particle minecraft:large_smoke 27 105.5 56 .4 .4 .4 0 15
execute if score global2 water_timer matches 10 run scoreboard players reset global2 water_timer

# water placed too late
execute if block 26 104 55 minecraft:gray_concrete run function simondmc:lvl2/2-2/replace_concrete

# water blipup skip patch
execute as @a[x=25,y=106,z=55,dy=1] unless block 26 105 55 gray_concrete positioned 24.55 105.00 60.02 run playsound entity.villager.no master @a
execute as @a[x=25,y=106,z=55,dy=1] unless block 26 105 55 gray_concrete run tp @s 24.55 105.00 60.02 -155.83 11.74