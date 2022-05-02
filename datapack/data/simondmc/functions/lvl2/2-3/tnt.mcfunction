# ticking function, handles everything related to tnt

# crafting
execute as @a[tag=started] if score @s tnt matches 1 run clear @s lapis_block
execute as @a[tag=started] if score @s tnt matches 1 run give @s tnt{CanPlaceOn:["minecraft:polished_deepslate"],display:{Name:'{"text":"Auto-TNT","italic":false}',Lore:['{"text":" "}','{"text":"Strong enough to","color":"gray","italic":false}','{"text":"shatter weak walls.","color":"gray","italic":false}']}}
execute as @a[tag=started] if score @s tnt matches 1 run scoreboard players reset @s tnt

# fake explosion
execute as @e[type=tnt,nbt={Fuse:1s}] at @s run particle explosion ~ ~ ~ 1 1 1 0 10
execute as @e[type=tnt,nbt={Fuse:1s}] at @s run playsound entity.generic.explode master @a[tag=started] ~ ~ ~ 1.5
execute as @e[type=tnt,nbt={Fuse:1s},x=30,y=114,z=25,distance=..3] run scoreboard players set done tnt 1
execute as @e[type=tnt,nbt={Fuse:1s}] unless score done tnt matches 1 run give @r tnt{CanPlaceOn:["minecraft:polished_deepslate"],display:{Name:'{"text":"Auto-TNT","italic":false}',Lore:['{"text":" "}','{"text":"Strong enough to","color":"gray","italic":false}','{"text":"shatter weak walls.","color":"gray","italic":false}']}}

# patch flashes
execute if score fuse tnt_timer matches 5..7 run scoreboard players set fuse tnt_timer 8
execute if score fuse tnt_timer matches 10..12 run scoreboard players set fuse tnt_timer 13
execute if score fuse tnt_timer matches 15..17 run scoreboard players set fuse tnt_timer 18
execute if score fuse tnt_timer matches 20..22 run scoreboard players set fuse tnt_timer 23
execute if score fuse tnt_timer matches 25..27 run scoreboard players set fuse tnt_timer 28
execute if score fuse tnt_timer matches 30..32 run scoreboard players set fuse tnt_timer 33
execute if score fuse tnt_timer matches 35..37 run scoreboard players set fuse tnt_timer 38
execute if score fuse tnt_timer matches 40..42 run scoreboard players set fuse tnt_timer 43
execute if score fuse tnt_timer matches 45..47 run scoreboard players set fuse tnt_timer 48
execute if score fuse tnt_timer matches 50..52 run scoreboard players set fuse tnt_timer 53
execute if score fuse tnt_timer matches 55..57 run scoreboard players set fuse tnt_timer 58
execute if score fuse tnt_timer matches 60..62 run scoreboard players set fuse tnt_timer 63
execute if score fuse tnt_timer matches 65..67 run scoreboard players set fuse tnt_timer 68
execute if score fuse tnt_timer matches 70..72 run scoreboard players set fuse tnt_timer 73
execute if score fuse tnt_timer matches 75..77 run scoreboard players set fuse tnt_timer 78

# continuously apply fuse so it stays (if paused)
execute as @e[type=tnt] if score global paused matches 1 store result entity @s Fuse short 1 run scoreboard players get fuse tnt_timer

# clear score when no tnt
execute unless entity @e[type=tnt] run scoreboard players set fuse tnt_timer 79

# checking if tnt is moving
execute as @e[type=tnt] store result score x tnt run data get entity @s Motion[0] 1000000
execute as @e[type=tnt] store result score y tnt run data get entity @s Motion[1] 1000000
execute as @e[type=tnt] store result score z tnt run data get entity @s Motion[2] 1000000

execute unless score x tnt matches 0 run scoreboard players set moving tnt 1
execute unless score y tnt matches 0 run scoreboard players set moving tnt 1
execute unless score z tnt matches 0 run scoreboard players set moving tnt 1

execute if score x tnt matches -10..10 if score y tnt matches -10..10 if score z tnt matches -10..10 run scoreboard players set moving tnt 0

# scripted motion (also known as doing a little trolling) - singleplayer
execute if score global multiplayer matches 1 as @a[tag=started] if predicate simondmc:lvl2/tnt as @e[type=tnt,limit=1,tag=!moving] if score moving tnt matches 1 if score @s tnt_timer matches 45.. run data merge entity @s {Motion:[0.0,1.1,-0.6]}
execute if score global multiplayer matches 1 as @a[tag=started] if predicate simondmc:lvl2/tnt as @e[type=tnt,limit=1,tag=!moving] if score moving tnt matches 1 if score @s tnt_timer matches 45.. run tag @s add moving

# scripted motion - multiplayer
execute if score global multiplayer matches 2.. as @a[tag=started] if predicate simondmc:lvl2/tnt if entity @a[tag=started,predicate=!simondmc:lvl2/tnt] as @e[type=tnt,limit=1,tag=!moving] if score moving tnt matches 1 if score @s tnt_timer matches 45.. run tellraw @a[tag=started,predicate=!simondmc:lvl2/tnt] {"text": "[You're not strong enough to reel in the TNT by yourself, you need all players on the platform]","color": "gray","italic": true}
execute if score global multiplayer matches 2.. unless entity @a[tag=started,predicate=!simondmc:lvl2/tnt] as @e[type=tnt,limit=1,tag=!moving] if score moving tnt matches 1 if score @s tnt_timer matches 45.. run data merge entity @s {Motion:[0.0,1.1,-0.6]}
execute if score global multiplayer matches 2.. unless entity @a[tag=started,predicate=!simondmc:lvl2/tnt] as @e[type=tnt,limit=1,tag=!moving] if score moving tnt matches 1 if score @s tnt_timer matches 45.. run tag @s add moving

execute as @e[type=tnt,limit=1,tag=!moving,nbt={OnGround:1b}] run tag @s remove moving

# breakage of wall
execute if score done tnt matches 1 run fill 29 114 24 31 116 24 air destroy
execute if score done tnt matches 1 run fill 32 116 24 32 115 24 air destroy
execute if score done tnt matches 1 run fill 30 117 24 31 117 24 air destroy
execute if score done tnt matches 1 run fill 30 114 23 31 117 23 air destroy
execute if score done tnt matches 1 run fill 32 116 23 32 114 23 air destroy
execute if score done tnt matches 1 run fill 29 116 23 29 117 23 air destroy
execute if score done tnt matches 1 run playsound entity.turtle.egg_break master @a[tag=started] 31 115 25
execute if score done tnt matches 1 run scoreboard players reset done tnt

# deactivate when pause on
execute if score global paused matches 1 run setblock 30 103 42 redstone_block
execute unless score global paused matches 1 run setblock 30 103 42 air

# record tnt lifetime to check if it's stopped moving naturally
scoreboard players add @e[type=tnt,tag=!display] tnt_timer 1

# secret
execute as @e[type=tnt,nbt={Fuse:1s},x=38,y=106,z=35,distance=..2] run fill 38 105 35 37 105 34 air destroy
execute as @e[type=tnt,nbt={Fuse:1s},x=38,y=106,z=35,distance=..2] run fill 38 105 35 39 105 36 air destroy

# remove tnt just before explosion
execute as @e[type=tnt,nbt={Fuse:1s}] run kill @s

# get out of secret
execute as @a[tag=started,x=38,y=104,z=30,dy=1] run setblock 39 106 32 redstone_block
execute unless entity @a[tag=started,x=38,y=104,z=30,dy=1] run setblock 39 106 32 air