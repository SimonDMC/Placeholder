# called by simondmc:core/settings on join or on removal of map tag, sets up stuff

advancement grant @s from minecraft:recipes/root
recipe take @s *
execute as @s run function simondmc:core/recipes
team join map @s
tag @s add map
spawnpoint @s -11 85 -15 -90
scoreboard players set @s hints 0
scoreboard players set @s secrets 0
scoreboard players set @s s_death 0
scoreboard players set h timer 0
scoreboard players set m timer 0
scoreboard players set lvl1_m timer 0
scoreboard players set lvl2_m timer 0
scoreboard players set lvl3_m timer 0
scoreboard players set lvl4_m timer 0
# optifine detection
schedule function simondmc:start/optifine 2s
# mc version detection
schedule function simondmc:start/version_check 3s
# gamerules
gamerule sendCommandFeedback false
# show advancements
advancement grant @s only simondmc:root
advancement grant @s only simondmc:util/show_all
# reset oob bypass
scoreboard players reset oob intro
# spectator trigger
scoreboard players enable @s spectator
# fix spawning outside the map
tp @a -11 85 -15 -90 1.3