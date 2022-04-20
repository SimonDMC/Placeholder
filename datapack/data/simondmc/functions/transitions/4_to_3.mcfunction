# ticking function, transitions between levels 4 and 3 (check readme for info on why 2 to 4 and 4 to 3)

execute as @a[x=-994,y=126,z=-999,dy=1] if score 7 4 matches 1 unless score lvl4 transition matches 1.. run scoreboard players set lvl4 transition 1
execute if score lvl4 transition matches 1.. run scoreboard players add lvl4 transition 1 
# narrator line
execute if score lvl4 transition matches 2 run scoreboard players set id narrator 15
execute if score lvl4 transition matches 2 run kill @e[type=item]
execute if score lvl4 transition matches 2 run title @a times 160 60 0
execute if score lvl4 transition matches 2 run title @a title {"text": "▬"}
execute if score lvl4 transition matches 2 run effect give @a slowness 10 0 true
execute if score lvl4 transition matches 20 run effect give @a slowness 10 1 true
execute if score lvl4 transition matches 40 run effect give @a slowness 10 2 true
execute if score lvl4 transition matches 60 run effect give @a slowness 10 3 true
execute if score lvl4 transition matches 80 run effect give @a slowness 10 4 true
execute if score lvl4 transition matches 100 run effect give @a slowness 10 5 true
execute if score lvl4 transition matches 120 run effect give @a slowness 10 6 true
execute if score lvl4 transition matches 140 run effect give @a slowness 10 7 true
execute if score lvl4 transition matches 162..222 run tp @a 1008.0 92.5 1026.0 -270 -90.00
execute if score lvl4 transition matches 172 run function simondmc:transitions/4_to_3_call
execute if score lvl4 transition matches 282 run scoreboard players reset lvl4 transition