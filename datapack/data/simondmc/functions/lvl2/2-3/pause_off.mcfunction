# called by simondmc:lvl2/2-3/pause, unpauses the pearl and tnt

# change pause button on/off
item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'{"text":"Pause","color":"gray","italic":false}',Lore:['{"text":"Right click to pause ","color":"dark_gray","italic":false}','{"text":"all entities & movement.","color":"dark_gray","italic":false}']}}

# reapplies motion to pearl
execute as @e[type=ender_pearl,tag=!display] store result entity @s Motion[0] double 0.000001 run scoreboard players get x motion
execute as @e[type=ender_pearl,tag=!display] store result entity @s Motion[1] double 0.000001 run scoreboard players get y motion
execute as @e[type=ender_pearl,tag=!display] store result entity @s Motion[2] double 0.000001 run scoreboard players get z motion

# unfreezes pearl
data merge entity @e[type=ender_pearl,limit=1,tag=!display] {NoGravity:0b}

scoreboard players reset @s carrot_on_a_stick
scoreboard players set global paused 0
effect clear @a slowness

# play resume sound
execute as @a at @s run playsound custom.resume master @s ~ ~ ~ .5 1.2