# ticking function, controls the end of lvl4 (yellow, evoker hallway etc.)

# clone end hallway
execute if score 7 4 matches 1 unless score 7t 4 matches 1 run clone -994 139 -1005 -981 131 -996 -995 122 -1005
execute if score 7 4 matches 1 unless score 7t 4 matches 1 run kill @e[type=item,nbt={Item:{id:"minecraft:iron_door"}}]
# tp evoker down
execute if score 7 4 matches 1 unless score 7t 4 matches 1 as @e[tag=evoker_end] at @s run tp @s ~-1 ~-9 ~
execute if score 7 4 matches 1 run scoreboard players set 7t 4 1

# open door
execute if score 7 4 matches 1 as @a[tag=started,x=-996,y=126,z=-999,dy=1] run setblock -994 124 -999 air
execute if score 7 4 matches 1 unless entity @a[tag=started,x=-996,y=126,z=-999,dy=1] run setblock -994 124 -999 redstone_block