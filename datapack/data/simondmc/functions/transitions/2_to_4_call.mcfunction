# called by simondmc:transitions/2_to_4, does some stuff related to 2-4 transition (check readme for info on why 2 to 4 and 4 to 3)

effect clear @a slowness
clear @a[tag=started] carrot_on_a_stick
clear @a[tag=started] fishing_rod
clear @a[tag=started] golden_shovel
clear @a[tag=started] water_bucket
xp set @a[tag=started] 0
xp set @a[tag=started] 0 levels
tag @a[tag=started] add lvl4
tag @a[tag=started] remove lvl1
tag @a[tag=started] remove lvl2
gamerule randomTickSpeed 0
# call fall entity check
function simondmc:core/summon_aecs
# cringe scoreboard check thing
scoreboard players reset * craft_sticks
scoreboard players reset * craft_planks
# summon laser displays
summon area_effect_cloud -998.5 132.5 -1009.8 {Duration:10,Tags:["text","laser1"],CustomName:'{"text":"Shoot Laser"}'}
summon area_effect_cloud -998.5 132.5 -1017.8 {Duration:10,Tags:["text","laser2"],CustomName:'{"text":"Shoot Laser"}'}
# recipe revamp
function simondmc:lvl4/global/recipes
kill @e[type=item]
scoreboard players reset @a[tag=started] pearl
# broadcast time if speedrun mode enabled
execute if score speedrun timer matches 1 run tellraw @a ["",{"score":{"name":"lvl2_m","objective":"timer"},"color":"green"},{"text":"m","color":"green"},{"score":{"name":"lvl2_s","objective":"timer"},"color":"green"},{"text":"s","color":"green"}]
# refresh hint system
execute if score global hint matches 1 run function simondmc:core/hint/refresh_hint
# patch banners not displaying
setblock -1009 141 -998 minecraft:moving_piston
setblock -1009 141 -999 minecraft:moving_piston
setblock -1009 141 -1000 minecraft:moving_piston
setblock -1008 139 -998 minecraft:moving_piston
setblock -1008 139 -999 minecraft:moving_piston
setblock -1008 139 -1000 minecraft:moving_piston
# patch house crusher softlock
setblock -1003 126 -986 minecraft:barrier
# placeable banner patch
setblock -1014 129 -981 minecraft:moving_piston
# infinite log oob patch
setblock -1017 131 -984 oak_log
setblock -1015 131 -984 oak_log
# confusing log patch
setblock -994 117 -991 dirt
# patch stone over void
fill -1011 128 -977 -1005 124 -982 infested_stone replace stone