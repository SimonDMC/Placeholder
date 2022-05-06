# ticking function, controls the ending area

#################
#               #
#  TRANSPOSAL:  #
#               #
#    X+1065     #
#    Y+60       #
#    Z+1007     #
#               #
#################

# stats
execute if block 1094 104 1028 polished_blackstone_button[powered=true] run scoreboard players set stats end 1
execute if block 1094 104 1028 polished_blackstone_button[powered=true] run setblock 1094 104 1028 polished_blackstone_button[facing=west]
execute if block 1095 104 1027 polished_blackstone_button[powered=true] run scoreboard players set stats end 1
execute if block 1095 104 1027 polished_blackstone_button[powered=true] run setblock 1095 104 1027 polished_blackstone_button
execute if block 1096 104 1028 polished_blackstone_button[powered=true] run scoreboard players set stats end 1
execute if block 1096 104 1028 polished_blackstone_button[powered=true] run setblock 1096 104 1028 polished_blackstone_button[facing=east]
execute if block 1095 104 1029 polished_blackstone_button[powered=true] run scoreboard players set stats end 1
execute if block 1095 104 1029 polished_blackstone_button[powered=true] run setblock 1095 104 1029 polished_blackstone_button[facing=south]
execute if score stats end matches 1 run scoreboard players enable @a[tag=started] morestats
execute if score stats end matches 1 as @a[tag=started] run tellraw @s ["",{"text":"Total Playtime: ","color":"yellow"},{"score":{"name":"h","objective":"timer"},"color":"green"},{"text":"h ","color":"green"},{"score":{"name":"m","objective":"timer"},"color":"green"},{"text":"m ","color":"green"},{"score":{"name":"s","objective":"timer"},"color":"green"},{"text":"s","color":"green"},{"text":"\n"},{"text":"Secrets Discovered: ","color":"yellow"},{"score":{"name":"@s","objective":"secrets"},"color":"green"},{"text":"/5","color":"green"},{"text":"\n"},{"text":"Hints Used: ","color":"yellow"},{"score":{"name":"@s","objective":"hints"},"color":"green"},{"text":"\n\n"},{"text":"Click for more stats","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger morestats"}}]
scoreboard players reset stats end

# stats villagers
execute as @a[tag=started] if score @s clicked matches 1.. run scoreboard players set stats end 1
scoreboard players reset @a[tag=started] clicked

# more stats
execute as @a[tag=started] if score @s morestats matches 1.. run tellraw @s ["",{"text":"Level 1 Playtime: ","color":"yellow"},{"score":{"name":"lvl1_m","objective":"timer"},"color":"green"},{"text":"m ","color":"green"},{"score":{"name":"lvl1_s","objective":"timer"},"color":"green"},{"text":"s","color":"green"},{"text":"\n"},{"text":"Level 2 Playtime: ","color":"yellow"},{"score":{"name":"lvl2_m","objective":"timer"},"color":"green"},{"text":"m ","color":"green"},{"score":{"name":"lvl2_s","objective":"timer"},"color":"green"},{"text":"s","color":"green"},{"text":"\n"},{"text":"Level 3 Playtime: ","color":"yellow"},{"score":{"name":"lvl4_m","objective":"timer"},"color":"green"},{"text":"m ","color":"green"},{"score":{"name":"lvl4_s","objective":"timer"},"color":"green"},{"text":"s","color":"green"},{"text":"\n"},{"text":"Level 4 Playtime: ","color":"yellow"},{"score":{"name":"lvl3_m","objective":"timer"},"color":"green"},{"text":"m ","color":"green"},{"score":{"name":"lvl3_s","objective":"timer"},"color":"green"},{"text":"s","color":"green"},{"text":"\n"},{"text":"Deaths: ","color":"yellow"},{"score":{"name":"@s","objective":"s_death"},"color":"green"}]
execute as @a[tag=started] if score @s morestats matches 1.. run scoreboard players reset @s morestats

# fill back wall with quartz once walked through
execute as @a[tag=started,x=1090,y=101,z=1025,dx=2,dy=2,dz=6] if score global end matches 1 unless block 1088 101 1029 smooth_quartz if score global multiplayer matches 2.. run tp @a[tag=started] @s
execute as @a[tag=started,x=1090,y=101,z=1025,dx=2,dy=2,dz=6] if score global end matches 1 run fill 1088 101 1029 1088 103 1027 smooth_quartz

# fix clone block updates
setblock 1093 104 1035 redstone_lamp[lit=true]
setblock 1095 105 1035 redstone_lamp[lit=true]

# particlesss
execute at @e[tag=both] run particle dust_color_transition 0.769 0.435 0.000 1 0.349 0.200 0.000 ~.5 ~-1.2 ~ .17 0 .17 0 4 normal
execute at @e[tag=both] run particle dust_color_transition 0.000 1.000 0.000 1 0.000 0.349 0.000 ~-.5 ~-1.2 ~ .17 0 .17 0 4 normal

# credits
execute as @a[x=1094,y=102,z=1034,distance=..3,tag=!endcredits] at @s run playsound minecraft:entity.experience_orb.pickup master @s
execute as @a[x=1094,y=102,z=1034,distance=..3,tag=!endcredits] run tellraw @s ["\n",{"text":"Coding, Models & Narration: ","color":"yellow"},{"text":"SimonDMC","color":"gold"},{"text":"\n"},{"text":"> simondmc.com","color":"green","clickEvent":{"action":"open_url","value":"https://simondmc.com"}},{"text":"\n"},{"text":"Building, Story & Game Design: ","color":"yellow"},{"text":"EurekaX","color":"gold"},{"text":"\n"},{"text":"> youtube.com/EurekaX","color":"red","clickEvent":{"action":"open_url","value":"https://youtube.com/EurekaX"}}]
execute as @a[x=1094,y=102,z=1034,distance=..3,tag=!endcredits] run tag @s add endcredits

# epilogue
execute if block 1093 102 1024 birch_button[powered=true] run scoreboard players set id narrator 26
execute if block 1093 102 1024 birch_button[powered=true] run setblock 1093 102 1024 birch_button[facing=south]

# additional credits
execute if block 1098 102 1031 birch_button[powered=true] run tellraw @a [{"text":"Playtesters:","color":"yellow"},{"text":"\n> martamares","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"hmmmmmmmmmmmmmmmmmmm"}]}},{"text":"\n> 1BlockedMess","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"\"Hold on, how is this even possible\""}]}},{"text":"\n> PoldsSlippers","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"\"the hardest puzzles are easier than the easy ones\" - Name 3"}]}},{"text":"\n> BiancaSS","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"average gay person"}]}},{"text":"\n> NotVixios","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"good map"}]}},{"text":"\n> Pindex","color":"white"},{"text":"\nTools used:","color":"yellow"},{"text":"\n> Mod-Warnings by 5uso\n> Advancement Disabler by Onnowhere","color":"white"}]
execute if block 1098 102 1031 birch_button[powered=true] run setblock 1098 102 1031 birch_button[facing=west]