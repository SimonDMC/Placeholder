# called by simondmc:transitions/4_to_3, does some stuff related to 4-3 transition

effect clear @a slowness
clear @a filled_map
xp set @a 0
xp set @a 0 levels
execute if score global multiplayer matches 2.. run effect give @a invisibility 5 1 true
scoreboard players reset global hint
kill @e[tag=glower]
tag @a add lvl3
tag @a remove lvl1
tag @a remove lvl2
tag @a remove lvl4
spawnpoint @a 1008 93 1026 -270
# call fall entity check
function simondmc:core/summon_aecs
# reset berries from evoker
scoreboard players reset @a berries
scoreboard players reset global berries
# nametags off
team modify map nametagVisibility never
schedule function simondmc:transitions/4_to_3_nametags 5s
# narrator line
schedule function simondmc:lvl3/3-1/narrator_line 6s