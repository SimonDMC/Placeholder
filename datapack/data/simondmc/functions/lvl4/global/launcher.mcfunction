# ticking function, controls the main slime block launcher

# powder break
execute if block -999 101 -999 birch_button[powered=true] if block -999 100 -999 purple_concrete_powder run setblock -999 100 -999 air destroy

# button
execute unless block -999 100 -999 air if block -999 101 -999 air run setblock -999 101 -999 birch_button[face=floor]

# upgrade
execute if entity @a[tag=started,nbt={SelectedItem:{id:"minecraft:slime_ball"}}] run tp @e[tag=launch] -999 100 -999
execute unless entity @a[tag=started,nbt={SelectedItem:{id:"minecraft:slime_ball"}}] run tp @e[tag=launch] -1000 83 -1000
execute as @a[tag=started] if score @s clicked matches 1.. as @s[nbt={SelectedItem:{id:"minecraft:slime_ball"}}] run function simondmc:lvl4/global/upgrade

# mega launch
execute if block -999 101 -999 minecraft:birch_button[powered=true] if score launcher 4 matches 1 as @a[tag=started,x=-1001,y=101,z=-1001,dx=4,dz=4] at @s if block ~ ~-.1 ~ slime_block run effect give @s levitation 1 16 true
execute if block -999 101 -999 minecraft:birch_button[powered=true] if score launcher 4 matches 1 as @a[x=-1001,y=101,z=-1001,dx=4,dz=4] at @s if block ~ ~-.1 ~ slime_block run playsound custom.launch master @s
execute if block -999 101 -999 minecraft:birch_button[powered=true] if score launcher 4 matches 1 as @a[tag=started,x=-1001,y=101,z=-1001,dx=4,dz=4] at @s if block ~ ~-.1 ~ slime_block run schedule function simondmc:lvl4/global/shut_up 1s
execute if block -999 101 -999 minecraft:birch_button[powered=true] if score launcher 4 matches 1 as @a[tag=started,x=-1001,y=101,z=-1001,dx=4,dz=4] at @s if block ~ ~-.1 ~ slime_block run recipe give @a[tag=started] glass_bottle

# spawnpoint cuz idk where else to put it
spawnpoint @a[tag=started] -999 101 -999 90

# make sure click villagers have invis
effect give @e[tag=launch] invisibility 1000000 0 true
effect give @e[tag=campfire1] invisibility 1000000 0 true
effect give @e[tag=campfire2] invisibility 1000000 0 true