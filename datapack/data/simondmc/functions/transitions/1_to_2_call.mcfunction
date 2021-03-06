# called by simondmc:transitions/1_to_2

clone -8 79 52 6 91 64 1 99 30
fill 11 95 38 9 98 41 minecraft:lime_terracotta replace minecraft:pink_terracotta
item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Pause","color":"gray","italic":false}',Lore:['{"text":"Right click to pause ","color":"dark_gray","italic":false}','{"text":"all entities & movement.","color":"dark_gray","italic":false}']}}
execute if score global multiplayer matches 2.. run tp @a[tag=started] @s
tag @a[tag=started] add lvl2
tag @a[tag=started] remove lvl1
execute unless entity @e[tag=text,x=54,y=112,z=46,distance=..1] run summon area_effect_cloud 54.5 112.2 46.2 {Duration:30000,Tags:["text"],CustomName:'{"text":"Door Override"}'}
# call fall entity check
function simondmc:core/summon_aecs
# spawnpoint
spawnpoint @a[tag=started] 11 100 39 -54
# clear contraband from potential multiplayer dupe (i may or may not be too lazy to fix it)
clear @a iron_axe
clear @a oak_log
# narrator line
scoreboard players set id narrator 4
# broadcast time if speedrun mode enabled
execute if score speedrun timer matches 1 run tellraw @a ["",{"score":{"name":"lvl1_m","objective":"timer"},"color":"green"},{"text":"m","color":"green"},{"score":{"name":"lvl1_s","objective":"timer"},"color":"green"},{"text":"s","color":"green"}]
# refresh hint system
execute if score global hint matches 1 run function simondmc:core/hint/refresh_hint