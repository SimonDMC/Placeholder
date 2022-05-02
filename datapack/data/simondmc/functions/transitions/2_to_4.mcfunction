# ticking function, transitions between levels 2 and 4 (check readme for info on why 2 to 4 and 4 to 3)

execute as @a[tag=started] if predicate simondmc:lvl2/end unless score lvl2 transition matches 1.. run scoreboard players set lvl2 transition 1
execute if score lvl2 transition matches 1.. run scoreboard players add lvl2 transition 1 
# narrator line
execute if score lvl2 transition matches 2 run scoreboard players set id narrator 9
execute if score lvl2 transition matches 2 run title @a[tag=started] times 160 40 0
execute if score lvl2 transition matches 2 run title @a[tag=started] title {"text": "▬"}
execute if score lvl2 transition matches 2 run effect give @a[tag=started] slowness 10 0 true
execute if score lvl2 transition matches 20 run effect give @a[tag=started] slowness 10 1 true
execute if score lvl2 transition matches 40 run effect give @a[tag=started] slowness 10 2 true
execute if score lvl2 transition matches 60 run effect give @a[tag=started] slowness 10 3 true
execute if score lvl2 transition matches 80 run effect give @a[tag=started] slowness 10 4 true
execute if score lvl2 transition matches 100 run effect give @a[tag=started] slowness 10 5 true
execute if score lvl2 transition matches 120 run effect give @a[tag=started] slowness 10 6 true
execute if score lvl2 transition matches 140 run effect give @a[tag=started] slowness 10 7 true
execute if score lvl2 transition matches 162 run tp @a[tag=spec] -999 101 -999 -90 0
execute if score lvl2 transition matches 162..202 run tp @a[tag=started] -999 101 -999 -90 0
execute if score lvl2 transition matches 172 run function simondmc:transitions/2_to_4_call
execute if score lvl2 transition matches 202 run scoreboard players reset lvl2 transition