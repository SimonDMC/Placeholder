# ticking function, controls the lever door in 2-3

# on/off
execute if block 33 107 36 lever[powered=true] run scoreboard players set open lever 1
execute if block 33 107 36 lever[powered=false] run scoreboard players reset open lever

# opening animation
execute if score open lever matches 1 unless score oanim lever matches 10.. run scoreboard players add oanim lever 1
execute unless score open lever matches 1 run scoreboard players reset oanim lever
execute if score oanim lever matches 2 run setblock 35 107 37 air destroy
execute if score oanim lever matches 4 run setblock 35 107 38 air destroy
execute if score oanim lever matches 6 run setblock 35 106 37 air destroy
execute if score oanim lever matches 8 run setblock 35 106 38 air destroy

# closing animation
execute unless score open lever matches 1 unless score canim lever matches 10.. run scoreboard players add canim lever 1
execute if score open lever matches 1 run scoreboard players reset canim lever
execute if score canim lever matches 2 run setblock 35 106 38 mossy_cobblestone
execute if score canim lever matches 2 positioned 35 106 38 run playsound block.stone.place master @a[tag=started]
execute if score canim lever matches 4 run setblock 35 106 37 mossy_cobblestone
execute if score canim lever matches 4 positioned 35 106 37 run playsound block.stone.place master @a[tag=started]
execute if score canim lever matches 6 run setblock 35 107 38 mossy_cobblestone
execute if score canim lever matches 6 positioned 35 107 38 run playsound block.stone.place master @a[tag=started]
execute if score canim lever matches 8 run setblock 35 107 37 cobblestone
execute if score canim lever matches 8 positioned 35 107 37 run playsound block.stone.place master @a[tag=started]

# lever lock (narrator line)
execute unless score locked lever matches 1 unless score open lever matches 1 as @a[tag=started] if block 38 105 35 cracked_stone_bricks if predicate simondmc:lvl2/lever_lock run scoreboard players set id narrator 8
execute unless score locked lever matches 1 unless score open lever matches 1 as @a[tag=started] if block 38 105 35 cracked_stone_bricks if predicate simondmc:lvl2/lever_lock run scoreboard players set locked lever 1

# stop from cheating
execute as @a[tag=started,gamemode=!adventure] if predicate simondmc:lvl2/lever_lock run tellraw @s "§cNope! Figure it out yourself :)"
execute as @a[tag=started,gamemode=!adventure] if predicate simondmc:lvl2/lever_lock run gamemode adventure @s