# ticking function, controls blowing up stuff

# replenish ender pearl
execute as @a[tag=started] if score @s pearl matches 1 unless entity @e[type=ender_pearl,tag=!display] run give @s ender_pearl
execute as @a[tag=started] if score @s pearl matches 1 unless entity @e[type=ender_pearl,tag=!display] run fill -999 108 -1002 -999 109 -1002 barrier
execute as @a[tag=started] if score @s pearl matches 1 unless entity @e[type=ender_pearl,tag=!display] run scoreboard players set phase 4 1
execute as @a[tag=started] if score @s pearl matches 1 unless entity @e[type=ender_pearl,tag=!display] run scoreboard players reset @s pearl

# various other pearl things (lame :/)
kill @e[type=endermite]
execute as @a[tag=started] at @s if block ~ ~ ~ smooth_quartz if score phase 4 matches 1 run tp @s -998.5 108 -1003.5 180 0
execute as @a[tag=started] at @s if block ~ ~ ~ barrier if score phase 4 matches 1 run tp @s -998.5 108 -1003.5 180 0

# tnt explosion (some stuff is handled in evoker function already)
execute as @e[type=tnt,nbt={Fuse:1s}] if entity @a[tag=started,predicate=simondmc:lvl4/explosion] run setblock -999 109 -1007 obsidian destroy

# tnt summon
execute if block -999 109 -1006 tnt run summon tnt -999 109 -1006 {Fuse:80}
execute if block -999 109 -1006 tnt run playsound entity.tnt.primed master @a -999 109 -1006
execute if block -999 109 -1006 tnt run setblock -999 109 -1006 air
execute if block -1000 109 -1007 tnt run summon tnt -1000 109 -1007 {Fuse:80}
execute if block -1000 109 -1007 tnt run playsound entity.tnt.primed master @a -1000 109 -1007
execute if block -1000 109 -1007 tnt run setblock -1000 109 -1007 air
execute if block -999 109 -1008 tnt run summon tnt -999 109 -1008 {Fuse:80}
execute if block -999 109 -1008 tnt run playsound entity.tnt.primed master @a -999 109 -1008
execute if block -999 109 -1008 tnt run setblock -999 109 -1008 air
execute if block -998 109 -1007 tnt run summon tnt -998 109 -1007 {Fuse:80}
execute if block -998 109 -1007 tnt run playsound entity.tnt.primed master @a -998 109 -1007
execute if block -998 109 -1007 tnt run setblock -998 109 -1007 air
execute if block -999 110 -1007 tnt run summon tnt -999 110 -1007 {Fuse:80}
execute if block -999 110 -1007 tnt run playsound entity.tnt.primed master @a -999 110 -1007
execute if block -999 110 -1007 tnt run setblock -999 110 -1007 air

# end crystal
execute as @e[type=end_crystal,x=-999,y=110,z=-1007,distance=..1] at @s run particle explosion ~ ~ ~ 1 1 1 0 10
execute as @e[type=end_crystal,x=-999,y=110,z=-1007,distance=..1] at @s run playsound entity.generic.explode master @a ~ ~ ~ 1.5
execute as @e[type=end_crystal,x=-999,y=110,z=-1007,distance=..1] at @s run setblock -999 109 -1007 netherite_block destroy
execute as @e[type=end_crystal,x=-999,y=110,z=-1007,distance=..1] run fill -999 108 -1002 -999 109 -1002 air
execute as @e[type=end_crystal,x=-999,y=110,z=-1007,distance=..1] run scoreboard players reset phase 4
execute as @e[type=end_crystal,x=-999,y=110,z=-1007,distance=..1] run kill @s

# respawn anchor
execute if block -999 109 -1006 respawn_anchor[charges=1] run particle explosion -999 109 -1006 1 1 1 0 10
execute if block -999 109 -1006 respawn_anchor[charges=1] run playsound entity.generic.explode master @a -999 109 -1006 1.5
execute if block -999 109 -1006 respawn_anchor[charges=1] run clone -999 118 -1007 -999 118 -1007 -999 109 -1007 replace
execute if block -999 109 -1006 respawn_anchor[charges=1] run setblock -999 109 -1006 air

execute if block -1000 109 -1007 respawn_anchor[charges=1] run particle explosion -1000 109 -1007 1 1 1 0 10
execute if block -1000 109 -1007 respawn_anchor[charges=1] run playsound entity.generic.explode master @a -1000 109 -1007 1.5
execute if block -1000 109 -1007 respawn_anchor[charges=1] run clone -999 118 -1007 -999 118 -1007 -999 109 -1007 replace
execute if block -1000 109 -1007 respawn_anchor[charges=1] run setblock -1000 109 -1007 air

execute if block -999 109 -1008 respawn_anchor[charges=1] run particle explosion -999 109 -1008 1 1 1 0 10
execute if block -999 109 -1008 respawn_anchor[charges=1] run playsound entity.generic.explode master @a -999 109 -1008 1.5
execute if block -999 109 -1008 respawn_anchor[charges=1] run clone -999 118 -1007 -999 118 -1007 -999 109 -1007 replace
execute if block -999 109 -1008 respawn_anchor[charges=1] run setblock -999 109 -1008 air

execute if block -998 109 -1007 respawn_anchor[charges=1] run particle explosion -998 109 -1007 1 1 1 0 10
execute if block -998 109 -1007 respawn_anchor[charges=1] run playsound entity.generic.explode master @a -998 109 -1007 1.5
execute if block -998 109 -1007 respawn_anchor[charges=1] run clone -999 118 -1007 -999 118 -1007 -999 109 -1007 replace
execute if block -998 109 -1007 respawn_anchor[charges=1] run setblock -998 109 -1007 air

execute if block -999 110 -1007 respawn_anchor[charges=1] run particle explosion -999 110 -1007 1 1 1 0 10
execute if block -999 110 -1007 respawn_anchor[charges=1] run playsound entity.generic.explode master @a -999 110 -1007 1.5
execute if block -999 110 -1007 respawn_anchor[charges=1] run clone -999 118 -1007 -999 118 -1007 -999 109 -1007 replace
execute if block -999 110 -1007 respawn_anchor[charges=1] run setblock -999 110 -1007 air

# fire charge
execute if block -999 109 -1006 fire run particle explosion -999 109 -1006 1 1 1 0 10
execute if block -999 109 -1006 fire run playsound entity.generic.explode master @a -999 109 -1006 1.5
execute if block -999 109 -1006 fire run setblock -999 109 -1007 dead_horn_coral_block destroy
execute if block -999 109 -1006 fire run setblock -999 109 -1006 air

execute if block -1000 109 -1007 fire run particle explosion -1000 109 -1007 1 1 1 0 10
execute if block -1000 109 -1007 fire run playsound entity.generic.explode master @a -1000 109 -1007 1.5
execute if block -1000 109 -1007 fire run setblock -999 109 -1007 dead_horn_coral_block destroy
execute if block -1000 109 -1007 fire run setblock -1000 109 -1007 air

execute if block -999 109 -1008 fire run particle explosion -999 109 -1008 1 1 1 0 10
execute if block -999 109 -1008 fire run playsound entity.generic.explode master @a -999 109 -1008 1.5
execute if block -999 109 -1008 fire run setblock -999 109 -1007 dead_horn_coral_block destroy
execute if block -999 109 -1008 fire run setblock -999 109 -1008 air

execute if block -998 109 -1007 fire run particle explosion -998 109 -1007 1 1 1 0 10
execute if block -998 109 -1007 fire run playsound entity.generic.explode master @a -998 109 -1007 1.5
execute if block -998 109 -1007 fire run setblock -999 109 -1007 dead_horn_coral_block destroy
execute if block -998 109 -1007 fire run setblock -998 109 -1007 air

execute if block -999 110 -1007 fire run particle explosion -999 110 -1007 1 1 1 0 10
execute if block -999 110 -1007 fire run playsound entity.generic.explode master @a -999 110 -1007 1.5
execute if block -999 110 -1007 fire run setblock -999 109 -1007 dead_horn_coral_block destroy
execute if block -999 110 -1007 fire run setblock -999 110 -1007 air

# creeper
execute if entity @e[type=creeper] run scoreboard players set creeper 4 1
execute if score creeper 4 matches 1 run effect give @a[tag=started] resistance 3 5 true
execute if score creeper 4 matches 1 unless entity @e[type=creeper] run effect clear @a[tag=started] resistance
execute if score creeper 4 matches 1 unless entity @e[type=creeper] run setblock -999 109 -1007 air destroy
execute if score creeper 4 matches 1 unless entity @e[type=creeper] run scoreboard players reset creeper 4
data merge entity @e[type=creeper,limit=1] {CustomName:'{"text":""}',CustomNameVisible:0b,powered:1b}