# ticking function, controls the info text wall (not in intro cuz its called by starting animation if not pressed)

execute if block -16 87 -15 polished_blackstone_button[powered=true] run scoreboard players set t_info intro 1
execute if block -17 87 -14 polished_blackstone_button[powered=true] run scoreboard players set t_info intro 1
execute if block -18 87 -15 polished_blackstone_button[powered=true] run scoreboard players set t_info intro 1
execute if block -17 87 -16 polished_blackstone_button[powered=true] run scoreboard players set t_info intro 1
execute if score t_info intro matches 1 run scoreboard players add info intro 1
execute if score info intro matches 1 run scoreboard players set pressed intro 1
execute if score info intro matches 1 run tellraw @a ["",{"text":">","color":"green"},{"text":" Items never despawn","color":"yellow"}]
execute if score info intro matches 21 run tellraw @a ["",{"text":">","color":"green"},{"text":" Turn ","color":"yellow"},{"text":"OFF ","bold":true,"color":"red"},{"text":"Advanced Tooltips [F3 + H]","color":"yellow"}]
execute if score info intro matches 41 run tellraw @a ["",{"text":">","color":"green"},{"text":" Don't leave items in containers","color":"yellow"}]
execute if score info intro matches 61 run tellraw @a ["",{"text":">","color":"green"},{"text":" Press ","color":"yellow"},{"keybind":"key.swapOffhand","color":"aqua","bold":true},{"text":" at any point for a clue","color":"yellow"}]
execute if score info intro matches 81 run tellraw @a ["",{"text":">","color":"green"},{"text":" A full walkthrough is available at ","color":"yellow"},{"text":"/trigger walkthrough","color":"green"}]
execute if score info intro matches 121 run tellraw @a ["",{"text":">","color":"green"},{"text":" If you find a bug, please report it using ","color":"yellow"},{"text":"/trigger bug","color":"green"}]
execute if score info intro matches 201 run tellraw @a ["",{"text":">","color":"green"},{"text":" Adjust ","color":"yellow"},{"text":"Voice Acting","bold":true,"color":"light_purple"},{"text":" (narrator) in Options > Music & Sounds","color":"yellow"}]
execute if score info intro matches 241 run tellraw @a ["",{"text":">","color":"green"},{"text":" Don't worry about getting stuck and having to reinstall the map; countless systems have been put in place to prevent softlocks.","color":"yellow"}]
execute if score info intro matches 301 run scoreboard players reset t_info intro
execute if score info intro matches 301 run scoreboard players reset info intro