# called by simondmc:lvl1/crane on furnace click with coal, plays an animation and advances the crane

clear @s charcoal 1
particle smoke 9.5 101.5 22.5 .4 .4 .4 0 200 normal
execute as @a[tag=started] at @s run playsound block.respawn_anchor.charge master @s
particle large_smoke 9.5 101.5 22.5 .4 .4 .4 0 20 normal
particle flame 9.5 101.5 22.5 .4 .4 .4 0 50 normal
scoreboard players add global crane 1
execute if score global crane matches 1 run clone 6 63 6 -13 79 12 -3 98 19
# narrator line
execute if score global crane matches 1 run scoreboard players set id narrator 3
execute if score global crane matches 2 run clone 6 63 16 -13 79 22 -3 98 19
execute if score global crane matches 3 run clone 6 63 26 -13 79 32 -3 98 19
kill @e[type=item,nbt={Item:{id:"minecraft:spruce_door"}}]
scoreboard players reset @s clicked