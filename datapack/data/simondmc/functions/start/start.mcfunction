# called by simondmc:start/area, starts the map lmao

# set up intro animation
fill -1 101 -2 1 103 -2 chiseled_quartz_block
fill 2 101 -1 2 103 1 chiseled_quartz_block
fill 1 101 2 -1 103 2 chiseled_quartz_block
fill -2 101 1 -2 103 -1 chiseled_quartz_block
fill 1 104 1 -1 104 -1 chiseled_quartz_block
fill 1 100 -4 -1 100 4 chiseled_quartz_block
fill 4 100 -1 -4 100 1 chiseled_quartz_block
execute as @e[tag=quartz] run data merge entity @s {Pose:{Head:[360f,0f,0f]}}
tp @a 0 101 0 360 0
kill @e[type=item]
spawnpoint @a 0 101 0
clear @a

# hacky way to get the amount of players but hey it works
execute as @a[tag=!spec] run scoreboard players add global multiplayer 1

# set up anti-fall system
tag @r add p1
tag @r[tag=!p1] add p2
tag @r[tag=!p1,tag=!p2] add p3
tag @r[tag=!p1,tag=!p2,tag=!p3] add p4
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4] add p5
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5] add p6
execute if entity @a[tag=!spec,tag=!p1,tag=!p2,tag=!p3,tag=!p4,tag=!p5,tag=!p6] run tellraw @a {"text": "This map supports up to 6 players, and will not work properly with more.","bold": true,"color": "red"}

# call fall entity check
function simondmc:core/summon_aecs

# villager things
scoreboard players reset @a clicked

# remove start entity nametag visibility
execute as @e[tag=start] run data merge entity @s {CustomNameVisible:0b}

# no more starting the map :skull:
setblock -6 86 -15 oak_wall_sign[facing=west]{Text2:'{"text":"The map has"}',Text3:'{"text":"already started!"}'} replace

# no more spectating once youre in the game
scoreboard players reset @a spectator

# start var
scoreboard players set started intro 1
tag @a add started

# narrator line
scoreboard players set id narrator 1

# lvl1 skip patch (too lazy to redo entire world setup)
setblock -12 64 2 minecraft:barrier
setblock -12 64 12 minecraft:barrier
setblock -12 64 22 minecraft:barrier
setblock -2 99 25 minecraft:barrier

# lvl2 pearl throw skip patch (sorta)
setblock 41 109 44 minecraft:cobblestone_wall
setblock 41 110 44 minecraft:cobblestone_wall

# lvl1 oob patch
setblock -4 69 30 barrier
setblock -4 69 28 barrier

# lvl2 oob patch
setblock 3 88 56 barrier