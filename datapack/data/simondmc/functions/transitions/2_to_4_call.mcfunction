# called by simondmc:transitions/2_to_4, does some stuff related to 2-4 transition (check readme for info on why 2 to 4 and 4 to 3)

effect clear @a[tag=started] slowness
clear @a[tag=started] carrot_on_a_stick
clear @a[tag=started] fishing_rod
clear @a[tag=started] golden_shovel
clear @a[tag=started] water_bucket
xp set @a[tag=started] 0
xp set @a[tag=started] 0 levels
scoreboard players reset global hint
kill @e[tag=glower]
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