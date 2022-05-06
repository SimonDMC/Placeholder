# called by simondmc:transitions/4_to_3, does some stuff related to 4-3 transition

effect clear @a slowness
clear @a[tag=started] filled_map
xp set @a[tag=started] 0
xp set @a[tag=started] 0 levels
execute if score global multiplayer matches 2.. run effect give @a[tag=started] invisibility 5 1 true
scoreboard players reset global hint
kill @e[tag=glower]
tag @a[tag=started] add lvl3
tag @a[tag=started] remove lvl1
tag @a[tag=started] remove lvl2
tag @a[tag=started] remove lvl4
spawnpoint @a[tag=started] 1008 93 1026 -270
# call fall entity check
function simondmc:core/summon_aecs
# reset berries from evoker
scoreboard players reset @a[tag=started] berries
scoreboard players reset global berries
# nametags off
team modify map nametagVisibility never
schedule function simondmc:transitions/4_to_3_nametags 5s
# narrator line
schedule function simondmc:lvl3/3-1/narrator_line 6s
# broadcast time if speedrun mode enabled
execute if score speedrun timer matches 1 run tellraw @a ["",{"score":{"name":"lvl4_m","objective":"timer"},"color":"green"},{"text":"m","color":"green"},{"score":{"name":"lvl4_s","objective":"timer"},"color":"green"},{"text":"s","color":"green"}]