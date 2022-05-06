# ticking function, controls all timers

# IMPORTANT NOTE: timer starts on the tick that walls start falling down, therefore first cutscene doesn't contribute to total time

# total playtime
execute if entity @a[tag=ingame] run scoreboard players add t timer 1
execute if score t timer matches 20 run scoreboard players add s timer 1
execute if score t timer matches 20 run scoreboard players set t timer 0
execute if score s timer matches 60 run scoreboard players add m timer 1
execute if score s timer matches 60 run scoreboard players set s timer 0
execute if score m timer matches 60 run scoreboard players add h timer 1
execute if score m timer matches 60 run scoreboard players set m timer 0

# lvl1 playtime
execute if entity @a[tag=ingame,tag=lvl1] run scoreboard players add lvl1_t timer 1
execute if score lvl1_t timer matches 20 run scoreboard players add lvl1_s timer 1
execute if score lvl1_t timer matches 20 run scoreboard players set lvl1_t timer 0
execute if score lvl1_s timer matches 60 run scoreboard players add lvl1_m timer 1
execute if score lvl1_s timer matches 60 run scoreboard players set lvl1_s timer 0

# lvl2 playtime
execute if entity @a[tag=ingame,tag=lvl2] run scoreboard players add lvl2_t timer 1
execute if score lvl2_t timer matches 20 run scoreboard players add lvl2_s timer 1
execute if score lvl2_t timer matches 20 run scoreboard players set lvl2_t timer 0
execute if score lvl2_s timer matches 60 run scoreboard players add lvl2_m timer 1
execute if score lvl2_s timer matches 60 run scoreboard players set lvl2_s timer 0

# lvl3 playtime
execute if entity @a[tag=ingame,tag=lvl3] run scoreboard players add lvl3_t timer 1
execute if score lvl3_t timer matches 20 run scoreboard players add lvl3_s timer 1
execute if score lvl3_t timer matches 20 run scoreboard players set lvl3_t timer 0
execute if score lvl3_s timer matches 60 run scoreboard players add lvl3_m timer 1
execute if score lvl3_s timer matches 60 run scoreboard players set lvl3_s timer 0

# lvl4 playtime
execute if entity @a[tag=ingame,tag=lvl4] run scoreboard players add lvl4_t timer 1
execute if score lvl4_t timer matches 20 run scoreboard players add lvl4_s timer 1
execute if score lvl4_t timer matches 20 run scoreboard players set lvl4_t timer 0
execute if score lvl4_s timer matches 60 run scoreboard players add lvl4_m timer 1
execute if score lvl4_s timer matches 60 run scoreboard players set lvl4_s timer 0

# display time if speedrun mode enabled
execute if score speedrun timer matches 1 run title @a actionbar ["",{"score":{"name":"m","objective":"timer"},"color":"gold"},{"text":"m","color":"gold"},{"score":{"name":"s","objective":"timer"},"color":"gold"},{"text":"s","color":"gold"}]