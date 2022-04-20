# called by simondmc:lvl3/3-1/misc, activates upon switching gamemodes after prompt

tp @a 1027.5 101.5 1031 522 7
tellraw @a "§cYou may no longer switch gamemodes."
gamemode adventure @a
scoreboard players reset dumb_hole_cheat narrator
fill 1026 103 1026 1026 104 1026 oak_log