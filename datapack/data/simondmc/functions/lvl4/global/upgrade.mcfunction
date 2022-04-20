# called by simondmc:lvl4/global/launcher, upgrades the launcher

scoreboard players set launcher 4 1
particle happy_villager -999 101.1 -999 0.4 0 0.4 1 20 normal
execute at @s run playsound block.slime_block.place master @s
clone -1001 93 -1001 -997 96 -997 -1001 98 -1001
clear @a slime_ball
scoreboard players reset @a clicked