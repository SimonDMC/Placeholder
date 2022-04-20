# called by simondmc:transitions/2_to_4, does some stuff related to 2-4 transition (check readme for info on why 2 to 4 and 4 to 3)

effect clear @a slowness
clear @a carrot_on_a_stick
clear @a fishing_rod
clear @a rabbit_foot
clear @a golden_shovel
clear @a water_bucket
xp set @a 0
xp set @a 0 levels
scoreboard players reset global hint
kill @e[tag=glower]
tag @a add lvl4
tag @a remove lvl2
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
scoreboard players reset @a pearl