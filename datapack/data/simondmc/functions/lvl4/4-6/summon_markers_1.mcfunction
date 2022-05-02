# called by simondmc:lvl4/4-6/laser, summons the laser and initiates it (part 1)

# reset previous call
kill @e[type=marker]
fill -1001 131 -1010 -997 131 -1004 minecraft:iron_block

# summon markers
execute positioned -1001 132.5 -1004 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -1001 132.5 -1005 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -1001 132.5 -1007 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -1001 132.5 -1009 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -1001 132.5 -1010 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -1000 132.5 -1010 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -998 132.5 -1010 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -997 132.5 -1010 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -997 132.5 -1008 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -997 132.5 -1007 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -997 132.5 -1006 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -997 132.5 -1004 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}

# rotate accordingly
execute as @e[tag=rod] at @s if block ~ ~ ~ end_rod[facing=north] run tp @s ~ ~ ~ ~180 ~
execute as @e[tag=rod] at @s if block ~ ~ ~ end_rod[facing=east] run tp @s ~ ~ ~ ~-90 ~
execute as @e[tag=rod] at @s if block ~ ~ ~ end_rod[facing=west] run tp @s ~ ~ ~ ~90 ~

# reset button
setblock -999 132 -1010 birch_button[facing=south]

# start chain
scoreboard players set laser 4 1

# playsound
execute as @a[tag=started] at @s run playsound block.beacon.ambient master @s