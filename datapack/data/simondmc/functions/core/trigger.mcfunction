# ticking function, controls all /trigger commands

# walkthrough
scoreboard players enable @a walkthrough
execute as @a if score @s walkthrough matches 1.. at @s run playsound minecraft:entity.experience_orb.pickup master @s
execute as @a if score @s walkthrough matches 1.. run tellraw @s {"text":"youtu.be/BMlCYoG2S8w","bold":true,"color":"yellow","clickEvent":{"action":"open_url","value":"https://youtu.be/BMlCYoG2S8w"}}
execute as @a if score @s walkthrough matches 1.. run scoreboard players reset @s walkthrough

# bug
scoreboard players enable @a bug
execute as @a if score @s bug matches 1.. at @s run playsound minecraft:entity.experience_orb.pickup master @s
execute as @a if score @s bug matches 1.. run tellraw @s {"text":"Click here to submit bug report.","color":"yellow","clickEvent":{"action":"open_url","value":"https://forms.gle/9aux2WqJMxbRmMmQ6"}}
execute as @a if score @s bug matches 1.. run scoreboard players reset @s bug

# version
scoreboard players enable @a version
execute as @a if score @s version matches 1.. run function simondmc:core/version
execute as @a if score @s version matches 1.. run scoreboard players reset @s version

# rp
scoreboard players enable @a rp
execute as @a if score @s rp matches 1.. run tellraw @s {"translate":"Click here to download the resource pack.","color":"yellow","clickEvent":{"action":"open_url","value":"https://simondmc.com/placeholder/rp"}}
execute as @a if score @s rp matches 1.. run scoreboard players reset @s rp

# spectator
execute if score started intro matches 1 as @a[tag=!spec,tag=!started] run scoreboard players enable @s spectator

execute as @a if score @s spectator matches 1.. run gamemode spectator @s
execute as @a if score @s spectator matches 1.. run tag @s add spec
execute as @a if score @s spectator matches 1.. run tellraw @s "§aYou are now playing as a spectator."
execute as @a if score @s spectator matches 1.. if entity @a[tag=lvl1] run tp @s @r[tag=lvl1]
execute as @a if score @s spectator matches 1.. if entity @a[tag=lvl2] run tp @s @r[tag=lvl2]
execute as @a if score @s spectator matches 1.. if entity @a[tag=lvl3] run tp @s @r[tag=lvl3]
execute as @a if score @s spectator matches 1.. if entity @a[tag=lvl4] run tp @s @r[tag=lvl4]
execute as @a if score @s spectator matches 1.. run scoreboard players reset @s spectator