# called by simondmc:lvl4/4-6/laser, summons the laser and initiates it (part 1)

# reset previous call
kill @e[type=marker]
fill -1001 131 -1018 -997 131 -1012 iron_block

# summon markers
execute positioned -1000 132.5 -1012 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -1001 132.5 -1013 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -1001 132.5 -1014 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -1001 132.5 -1017 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -1001 132.5 -1018 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -1000 132.5 -1018 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -998 132.5 -1018 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -997 132.5 -1018 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -997 132.5 -1017 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -997 132.5 -1015 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -997 132.5 -1014 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -997 132.5 -1012 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}
execute positioned -998 132.5 -1012 if block ~ ~ ~ end_rod run summon marker ~ ~ ~ {NoGravity:1b,Tags:["rod"]}

# rotate accordingly
execute as @e[tag=rod] at @s if block ~ ~ ~ end_rod[facing=north] run tp @s ~ ~ ~ ~180 ~
execute as @e[tag=rod] at @s if block ~ ~ ~ end_rod[facing=east] run tp @s ~ ~ ~ ~-90 ~
execute as @e[tag=rod] at @s if block ~ ~ ~ end_rod[facing=west] run tp @s ~ ~ ~ ~90 ~

# reset button
setblock -999 132 -1018 birch_button[facing=south]

# start chain
scoreboard players set laser 4 1

# playsound
execute as @a at @s run playsound block.beacon.ambient master @s