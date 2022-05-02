# ticking function, controls the entirety of lvl4-3 cuz i was too lazy to split it into multiple functions

# light up dust
execute if block -1013 114 -998 lever[powered=true] run setblock -1016 113 -999 redstone_wire[power=15]
execute if block -1014 114 -998 lever[powered=true] run setblock -1016 113 -999 redstone_wire[power=15]
execute if block -1015 114 -998 lever[powered=true] run setblock -1016 113 -999 redstone_wire[power=15]
execute if block -1013 114 -999 lever[powered=true] run setblock -1016 113 -999 redstone_wire[power=15]
execute if block -1014 114 -999 lever[powered=true] run setblock -1016 113 -999 redstone_wire[power=15]
execute if block -1015 114 -999 lever[powered=true] run setblock -1016 113 -999 redstone_wire[power=15]
execute if block -1013 114 -1000 lever[powered=true] run setblock -1016 113 -999 redstone_wire[power=15]
execute if block -1014 114 -1000 lever[powered=true] run setblock -1016 113 -999 redstone_wire[power=15]
execute if block -1015 114 -1000 lever[powered=true] run setblock -1016 113 -999 redstone_wire[power=15]

# turn off dust
execute if block -1013 114 -998 lever[powered=false] if block -1014 114 -998 lever[powered=false] if block -1015 114 -998 lever[powered=false] if block -1013 114 -999 lever[powered=false] if block -1014 114 -999 lever[powered=false] if block -1015 114 -999 lever[powered=false] if block -1013 114 -1000 lever[powered=false] if block -1014 114 -1000 lever[powered=false] if block -1015 114 -1000 lever[powered=false] run setblock -1016 113 -999 redstone_wire[power=0]

# mimic to lamp dust
execute if block -1016 113 -999 redstone_wire[power=15] run setblock -1019 118 -1001 redstone_block
execute if block -1016 113 -999 redstone_wire[power=0] run setblock -1019 118 -1001 air

# mimic to lamp
execute if block -1014 119 -1000 redstone_wire[power=10] run setblock -1014 118 -999 redstone_lamp[lit=true]
execute if block -1014 119 -1000 redstone_wire[power=0] run setblock -1014 118 -999 redstone_lamp[lit=false]

# close trapdoor
execute if block -1015 114 -998 lever[powered=false] unless block -1018 115 -999 iron_trapdoor[facing=east,open=true] run playsound block.iron_trapdoor.close master @a -1017.81 115.43 -998.36 1
execute if block -1015 114 -998 lever[powered=false] run setblock -1018 115 -999 iron_trapdoor[facing=east,open=true]
execute if block -1015 114 -999 lever[powered=false] unless block -1018 115 -999 iron_trapdoor[facing=east,open=true] run playsound block.iron_trapdoor.close master @a -1017.81 115.43 -998.36 1
execute if block -1015 114 -999 lever[powered=false] run setblock -1018 115 -999 iron_trapdoor[facing=east,open=true]
execute if block -1014 114 -999 lever[powered=false] unless block -1018 115 -999 iron_trapdoor[facing=east,open=true] run playsound block.iron_trapdoor.close master @a -1017.81 115.43 -998.36 1
execute if block -1014 114 -999 lever[powered=false] run setblock -1018 115 -999 iron_trapdoor[facing=east,open=true]
execute if block -1013 114 -999 lever[powered=false] unless block -1018 115 -999 iron_trapdoor[facing=east,open=true] run playsound block.iron_trapdoor.close master @a -1017.81 115.43 -998.36 1
execute if block -1013 114 -999 lever[powered=false] run setblock -1018 115 -999 iron_trapdoor[facing=east,open=true]
execute if block -1013 114 -1000 lever[powered=false] unless block -1018 115 -999 iron_trapdoor[facing=east,open=true] run playsound block.iron_trapdoor.close master @a -1017.81 115.43 -998.36 1
execute if block -1013 114 -1000 lever[powered=false] run setblock -1018 115 -999 iron_trapdoor[facing=east,open=true]
execute if block -1013 114 -998 lever[powered=true] unless block -1018 115 -999 iron_trapdoor[facing=east,open=true] run playsound block.iron_trapdoor.close master @a -1017.81 115.43 -998.36 1
execute if block -1013 114 -998 lever[powered=true] run setblock -1018 115 -999 iron_trapdoor[facing=east,open=true]
execute if block -1014 114 -998 lever[powered=true] unless block -1018 115 -999 iron_trapdoor[facing=east,open=true] run playsound block.iron_trapdoor.close master @a -1017.81 115.43 -998.36 1
execute if block -1014 114 -998 lever[powered=true] run setblock -1018 115 -999 iron_trapdoor[facing=east,open=true]
execute if block -1015 114 -1000 lever[powered=true] unless block -1018 115 -999 iron_trapdoor[facing=east,open=true] run playsound block.iron_trapdoor.close master @a -1017.81 115.43 -998.36 1
execute if block -1015 114 -1000 lever[powered=true] run setblock -1018 115 -999 iron_trapdoor[facing=east,open=true]
execute if block -1014 114 -1000 lever[powered=true] unless block -1018 115 -999 iron_trapdoor[facing=east,open=true] run playsound block.iron_trapdoor.close master @a -1017.81 115.43 -998.36 1
execute if block -1014 114 -1000 lever[powered=true] run setblock -1018 115 -999 iron_trapdoor[facing=east,open=true]

# open trapdoor
execute if block -1015 114 -998 lever[powered=true] if block -1015 114 -999 lever[powered=true] if block -1014 114 -999 lever[powered=true] if block -1013 114 -999 lever[powered=true] if block -1013 114 -1000 lever[powered=true] if block -1013 114 -998 lever[powered=false] if block -1014 114 -998 lever[powered=false] if block -1015 114 -1000 lever[powered=false] if block -1014 114 -1000 lever[powered=false] unless block -1018 115 -999 iron_trapdoor[facing=east,open=false] run playsound block.iron_trapdoor.open master @a -1017.81 115.43 -998.36 1
execute if block -1015 114 -998 lever[powered=true] if block -1015 114 -999 lever[powered=true] if block -1014 114 -999 lever[powered=true] if block -1013 114 -999 lever[powered=true] if block -1013 114 -1000 lever[powered=true] if block -1013 114 -998 lever[powered=false] if block -1014 114 -998 lever[powered=false] if block -1015 114 -1000 lever[powered=false] if block -1014 114 -1000 lever[powered=false] unless block -1018 115 -999 iron_trapdoor[facing=east,open=false] as @a[tag=started] at @s run playsound entity.experience_orb.pickup master @s
execute if block -1015 114 -998 lever[powered=true] if block -1015 114 -999 lever[powered=true] if block -1014 114 -999 lever[powered=true] if block -1013 114 -999 lever[powered=true] if block -1013 114 -1000 lever[powered=true] if block -1013 114 -998 lever[powered=false] if block -1014 114 -998 lever[powered=false] if block -1015 114 -1000 lever[powered=false] if block -1014 114 -1000 lever[powered=false] run setblock -1018 115 -999 iron_trapdoor[facing=east,open=false]

# light up lamps below
execute if block -1013 114 -998 lever[powered=true] run setblock -1013 113 -998 orange_terracotta
execute if block -1014 114 -998 lever[powered=true] run setblock -1014 113 -998 orange_terracotta
execute if block -1015 114 -998 lever[powered=true] run setblock -1015 113 -998 orange_terracotta
execute if block -1013 114 -999 lever[powered=true] run setblock -1013 113 -999 orange_terracotta
execute if block -1014 114 -999 lever[powered=true] run setblock -1014 113 -999 orange_terracotta
execute if block -1015 114 -999 lever[powered=true] run setblock -1015 113 -999 orange_terracotta
execute if block -1013 114 -1000 lever[powered=true] run setblock -1013 113 -1000 orange_terracotta
execute if block -1014 114 -1000 lever[powered=true] run setblock -1014 113 -1000 orange_terracotta
execute if block -1015 114 -1000 lever[powered=true] run setblock -1015 113 -1000 orange_terracotta

# unlight lamps below
execute if block -1013 114 -998 lever[powered=false] run setblock -1013 113 -998 pink_wool
execute if block -1014 114 -998 lever[powered=false] run setblock -1014 113 -998 pink_wool
execute if block -1015 114 -998 lever[powered=false] run setblock -1015 113 -998 pink_wool
execute if block -1013 114 -999 lever[powered=false] run setblock -1013 113 -999 pink_wool
execute if block -1014 114 -999 lever[powered=false] run setblock -1014 113 -999 pink_wool
execute if block -1015 114 -999 lever[powered=false] run setblock -1015 113 -999 pink_wool
execute if block -1013 114 -1000 lever[powered=false] run setblock -1013 113 -1000 pink_wool
execute if block -1014 114 -1000 lever[powered=false] run setblock -1014 113 -1000 pink_wool
execute if block -1015 114 -1000 lever[powered=false] run setblock -1015 113 -1000 pink_wool

# tp in
execute if score global multiplayer matches 2.. as @a[tag=started,x=-1004,y=114,z=-999,dy=1] unless score tp3 4 matches 1 run tp @a[tag=started] @s
# narrator line
execute as @a[tag=started,x=-1004,y=114,z=-999,dy=1] unless score tp3 4 matches 1 run scoreboard players set id narrator 11
execute as @a[tag=started,x=-1004,y=114,z=-999,dy=1] run scoreboard players set tp3 4 1

# trapdoor stuck patch
execute as @a[tag=started,x=-1019,y=115,z=-999,dy=0] run tp @s -1012.98 114.00 -998.36 -268.51 1.62

# make sure shulker cant break item frame
execute as @a[tag=started,nbt={SelectedItem:{tag:{Sneak:1b}}}] as @e[tag=redstone_frame] run data merge entity @s {Fixed:1b}
execute unless entity @a[tag=started,nbt={SelectedItem:{tag:{Sneak:1b}}}] as @e[tag=redstone_frame] run data merge entity @s {Fixed:0b}