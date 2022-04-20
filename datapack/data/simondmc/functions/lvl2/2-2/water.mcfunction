# ticking function, handles everything related to water

# bucket replacement 
execute as @a[nbt={Inventory:[{id:"minecraft:bucket"}]}] run item replace entity @s weapon.mainhand with water_bucket{CanPlaceOn:["minecraft:green_glazed_terracotta"],display:{Name:'{"text":"Infinite Water Bucket","italic":false}',Lore:['{"text":" "}','{"text":"Can be placed on:","color":"gray","italic":false}','{"text":"Magma Cube","color":"dark_gray","italic":false}']},HideFlags:16}

# water drain
execute if block 26 105 55 minecraft:water run scoreboard players add global water_timer 1
execute if score global water_timer matches 10 run setblock 26 105 55 air
execute if score global water_timer matches 10 run playsound minecraft:block.fire.extinguish master @a 27 105 56 1 1.5
execute if score global water_timer matches 10 run particle minecraft:large_smoke 26 105.5 55 .4 .4 .4 0 15
execute if score global water_timer matches 10 run scoreboard players reset global water_timer

# water placed too late
execute if block 26 104 55 minecraft:gray_concrete run function simondmc:lvl2/2-2/replace_concrete