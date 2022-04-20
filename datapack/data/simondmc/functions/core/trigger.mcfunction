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