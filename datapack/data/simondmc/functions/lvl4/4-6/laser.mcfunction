# ticking function, controls the end rod level

# activation
execute if block -999 132 -1010 birch_button[powered=true] run function simondmc:lvl4/4-6/summon_markers_1
execute if block -999 132 -1018 birch_button[powered=true] run function simondmc:lvl4/4-6/summon_markers_2

# chain
execute if score laser 4 matches 1 as @e[tag=rod] at @s if block ^ ^ ^.1 #laser_passable run tp @s ^ ^ ^.1
execute if score laser 4 matches 1 as @e[tag=rod] at @s run setblock ~ ~-1 ~ gold_block
execute if score laser 4 matches 1 as @e[tag=rod] at @s run particle dust 1.000 0.000 0.000 1 ~ ~ ~ 0 0 0 1 0 force

# stop when hit obstacle
execute as @e[tag=rod] at @s unless block ^ ^ ^.1 #laser_passable run kill @s
execute if score laser 4 matches 1 unless entity @e[tag=rod] run stopsound @a[tag=started] master block.beacon.ambient
execute if score laser 4 matches 1 unless entity @e[tag=rod] if blocks -1001 128 -1010 -997 128 -1004 -1001 131 -1010 masked run function simondmc:lvl4/4-6/evaluate_1
execute if score laser 4 matches 1 unless entity @e[tag=rod] run scoreboard players reset laser 4

# end rod conversion
execute as @e[type=item,nbt={Item:{id:"minecraft:end_rod"}}] run data merge entity @s {Item:{id:"end_rod",tag:{CanPlaceOn:["minecraft:quartz_bricks"],display:{Name:'{"text":"Laser End Rod","color":"red","italic":false}',Lore:['{"text":"Shoots a laser in the","color":"gray","italic":false}','{"text":"direction it\'s facing.","color":"gray","italic":false}']}}}}

# turning - hardcoded :(
execute as @e[tag=rod,x=-1001,y=132,z=-1015,dy=1] at @s if block ~.5 ~ ~ pink_glazed_terracotta run tp @s ~ ~ ~ 0 0
execute as @e[tag=rod,x=-1001,y=132,z=-1012,dy=1] at @s if block ~ ~ ~-.5 pink_glazed_terracotta run tp @s ~ ~ ~ -90 0
execute as @e[tag=rod,x=-1000,y=132,z=-1017,dy=1] at @s if block ~ ~ ~-.45 gray_glazed_terracotta if block ~ ~ ~.45 gray_glazed_terracotta run tp @s ~ ~ ~ 90 0
execute as @e[tag=rod,x=-998,y=132,z=-1017,dy=1] at @s if block ~ ~ ~.45 pink_glazed_terracotta if block ~ ~ ~-.45 pink_glazed_terracotta run tp @s ~ ~ ~ 90 0

# barrel anim
execute if blocks -1001 128 -1018 -997 128 -1012 -1001 131 -1018 masked unless score bAnim 4 matches 0 run scoreboard players add bAnim 4 1
execute if score bAnim 4 matches 1 run clone -1003 134 -1015 -1003 134 -1015 -999 136 -1015
execute if score bAnim 4 matches 1 as @a at @s run playsound block.chain.place master @s ~ ~ ~ 1 0.8
execute if score bAnim 4 matches 1 as @a at @s run playsound entity.experience_orb.pickup master @s
execute if score bAnim 4 matches 1 run clear @a[tag=started] shears
execute if score bAnim 4 matches 1 run summon item -1012 138 -999 {Tags:["paper"],CustomName:'{"text":"Paper"}',Item:{id:"minecraft:paper",Count:1b}}
execute if score bAnim 4 matches 21 run clone -999 136 -1015 -999 136 -1015 -999 135 -1015
execute if score bAnim 4 matches 21 run setblock -999 136 -1015 chain
execute if score bAnim 4 matches 21 as @a at @s run playsound block.chain.break master @s ~ ~ ~ 1 0.8
execute if score bAnim 4 matches 41 run clone -999 135 -1015 -999 135 -1015 -999 134 -1015
execute if score bAnim 4 matches 41 run setblock -999 135 -1015 chain
execute if score bAnim 4 matches 41 as @a at @s run playsound block.chain.place master @s ~ ~ ~ 1 0.8
execute if score bAnim 4 matches 41 run scoreboard players set bAnim 4 0

# ladder anim
execute if block -996 132 -999 ladder unless score lAnim 4 matches 0 run scoreboard players add lAnim 4 1
execute if score lAnim 4 matches 21 run setblock -996 133 -999 ladder[facing=west]
execute if score lAnim 4 matches 21 run playsound block.bamboo.place master @a -996 133 -999
execute if score lAnim 4 matches 41 run setblock -996 134 -999 ladder[facing=west]
execute if score lAnim 4 matches 41 run playsound block.bamboo.place master @a -996 134 -999
execute if score lAnim 4 matches 41 run scoreboard players set lAnim 4 0

# crafting
execute as @a[tag=started] if score @s rod matches 1.. run clear @s dead_tube_coral_fan
execute as @a[tag=started] if score @s rod matches 1 run give @s end_rod{CanPlaceOn:["minecraft:quartz_bricks"],display:{Name:'{"text":"Laser End Rod","color":"red","italic":false}',Lore:['{"text":"Shoots a laser in the","color":"gray","italic":false}','{"text":"direction it\'s facing.","color":"gray","italic":false}']}} 1
execute as @a[tag=started] if score @s rod matches 2 run give @s end_rod{CanPlaceOn:["minecraft:quartz_bricks"],display:{Name:'{"text":"Laser End Rod","color":"red","italic":false}',Lore:['{"text":"Shoots a laser in the","color":"gray","italic":false}','{"text":"direction it\'s facing.","color":"gray","italic":false}']}} 2
execute as @a[tag=started] if score @s rod matches 3 run give @s end_rod{CanPlaceOn:["minecraft:quartz_bricks"],display:{Name:'{"text":"Laser End Rod","color":"red","italic":false}',Lore:['{"text":"Shoots a laser in the","color":"gray","italic":false}','{"text":"direction it\'s facing.","color":"gray","italic":false}']}} 3
execute as @a[tag=started] if score @s rod matches 4 run give @s end_rod{CanPlaceOn:["minecraft:quartz_bricks"],display:{Name:'{"text":"Laser End Rod","color":"red","italic":false}',Lore:['{"text":"Shoots a laser in the","color":"gray","italic":false}','{"text":"direction it\'s facing.","color":"gray","italic":false}']}} 4
execute as @a[tag=started] if score @s rod matches 5 run give @s end_rod{CanPlaceOn:["minecraft:quartz_bricks"],display:{Name:'{"text":"Laser End Rod","color":"red","italic":false}',Lore:['{"text":"Shoots a laser in the","color":"gray","italic":false}','{"text":"direction it\'s facing.","color":"gray","italic":false}']}} 5
execute as @a[tag=started] if score @s rod matches 6 run give @s end_rod{CanPlaceOn:["minecraft:quartz_bricks"],display:{Name:'{"text":"Laser End Rod","color":"red","italic":false}',Lore:['{"text":"Shoots a laser in the","color":"gray","italic":false}','{"text":"direction it\'s facing.","color":"gray","italic":false}']}} 6
execute as @a[tag=started] if score @s rod matches 1.. run scoreboard players reset @s rod