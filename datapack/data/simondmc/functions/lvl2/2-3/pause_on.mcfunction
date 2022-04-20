# called by simondmc:lvl2/2-3/pause, pauses the pearl and tnt

# change pause button on/off
item replace entity @s weapon.mainhand with carrot_on_a_stick{CustomModelData:1,display:{Name:'{"text":"Paused","color":"gold","italic":false}',Lore:['{"text":"Right click to unpause ","color":"#FFFCB0","italic":false}','{"text":"all entities & movement.","color":"#FFFCB0","italic":false}']}}

# save motion of pearl
execute as @e[type=ender_pearl,tag=!display] store result score x motion run data get entity @s Motion[0] 1000000
execute as @e[type=ender_pearl,tag=!display] store result score y motion run data get entity @s Motion[1] 1000000
execute as @e[type=ender_pearl,tag=!display] store result score z motion run data get entity @s Motion[2] 1000000

# freeze pearl
data merge entity @e[type=ender_pearl,limit=1,tag=!display] {Motion:[0.0,0.0,0.0]}
data merge entity @e[type=ender_pearl,limit=1,tag=!display] {NoGravity:1b}

scoreboard players reset @s carrot_on_a_stick
scoreboard players set global paused 1
effect give @a slowness 1000000 1 true

# save fuse of tnt
execute as @e[type=tnt,tag=!display] store result score fuse tnt_timer run data get entity @s Fuse

# stop hissing sound
stopsound @a block entity.tnt.primed

# play pause sound
execute at @s run playsound custom.pause master @s ~ ~ ~ .5 1.5