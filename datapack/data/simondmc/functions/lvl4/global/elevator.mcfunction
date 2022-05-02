# ticking function, handles both elevators and the transition between them

# im not commenting this cuz i cant be bothered to but yea it somehow works
execute as @a[tag=started] at @s if block ~ ~-4.1 ~ melon run scoreboard players set t_elevator 4 1
execute if score t_elevator 4 matches 1 run scoreboard players add elevator 4 1
execute if score elevator 4 matches 1 as @a[tag=started] at @s if block ~ ~-5 ~ melon run tp @s ~ ~1.4 ~
execute if score elevator 4 matches 1 run clone -1006 97 -1001 -1004 105 -996 -1006 98 -1001 replace move
execute if score elevator 4 matches 1 run playsound block.chain.break master @a[tag=started] -1004.00 102.92 -998.40 1 0.8
execute if score elevator 4 matches 21 as @a[tag=started] at @s if block ~ ~-5 ~ melon run tp @s ~ ~1.4 ~
execute if score elevator 4 matches 21 run clone -1006 98 -1001 -1004 106 -996 -1006 99 -1001 replace move
execute if score elevator 4 matches 21 run playsound block.chain.break master @a[tag=started] -1004.00 103.92 -998.40 1 0.8
execute if score elevator 4 matches 41 as @a[tag=started,nbt={SelectedItem:{id:"minecraft:totem_of_undying"}}] run scoreboard players set totem 4 1
execute if score elevator 4 matches 41 unless score totem 4 matches 2 as @a[tag=started] at @s if block ~ ~-5 ~ melon run effect give @s instant_damage 1 10
execute if score elevator 4 matches 41 if score totem 4 matches 1 as @a[tag=started] at @s if block ~ ~-5 ~ melon run scoreboard players set totem 4 2
execute if score elevator 4 matches 41 unless score totem 4 matches 2 as @a[tag=started] at @s if block ~ ~-5 ~ melon run tellraw @a[tag=started] [{"selector":"@s"},{"translate":"custom.elevator_die"}]
execute if score elevator 4 matches 41 unless score totem 4 matches 2 as @a[tag=started] at @s if block ~ ~-5 ~ melon run scoreboard players add @s s_death 1
# narrator line
execute if score elevator 4 matches 41 unless score totem 4 matches 2 as @a[tag=started] at @s if block ~ ~-5 ~ melon unless score el_die 4 matches 1 run scoreboard players set id narrator 10
execute if score elevator 4 matches 41 unless score totem 4 matches 2 as @a[tag=started] at @s if block ~ ~-5 ~ melon run scoreboard players set el_die 4 1
execute if score elevator 4 matches 41 unless score totem 4 matches 2 as @a[tag=started] at @s if block ~ ~-5 ~ melon run tp @s -999 101 -999 90 0
# no jumping in the elevator >:(
execute if score elevator 4 matches 41 unless score totem 4 matches 2 as @a[tag=started] at @s if block ~ ~-6 ~ melon run effect give @s instant_damage 1 10
execute if score elevator 4 matches 41 unless score totem 4 matches 2 as @a[tag=started] at @s if block ~ ~-6 ~ melon run tellraw @a[tag=started] [{"selector":"@s"},{"translate":"custom.elevator_die"}]
execute if score elevator 4 matches 41 unless score totem 4 matches 2 as @a[tag=started] at @s if block ~ ~-6 ~ melon run scoreboard players add @s s_death 1
# narrator line
execute if score elevator 4 matches 41 unless score totem 4 matches 2 as @a[tag=started] at @s if block ~ ~-6 ~ melon unless score el_die 4 matches 1 run scoreboard players set id narrator 10
execute if score elevator 4 matches 41 unless score totem 4 matches 2 as @a[tag=started] at @s if block ~ ~-6 ~ melon run scoreboard players set el_die 4 1
execute if score elevator 4 matches 41 unless score totem 4 matches 2 as @a[tag=started] at @s if block ~ ~-6 ~ melon run tp @s -999 101 -999 90 0
execute if score elevator 4 matches 41 unless score totem 4 matches 2 run clone -1006 99 -1001 -1004 107 -996 -1006 97 -1001 replace move
execute if score elevator 4 matches 41 unless score totem 4 matches 2 run playsound block.anvil.land master @a[tag=started] -1004.00 104.92 -998.40 0.5 1
execute if score elevator 4 matches 41 unless score totem 4 matches 2 run scoreboard players reset t_elevator 4
execute if score elevator 4 matches 41 unless score totem 4 matches 2 run scoreboard players reset elevator 4
execute if score elevator 4 matches 41 as @a[tag=started] at @s if block ~ ~-5 ~ melon run tp @s ~ ~25.4 ~
execute if score elevator 4 matches 41 run clone -1006 99 -1001 -1004 107 -996 -1006 97 -1001 replace move
execute if score elevator 4 matches 41 run clone -1006 126 -1001 -1004 134 -996 -1006 124 -1001 replace move
execute if score elevator 4 matches 41 run playsound block.chain.break master @a[tag=started] -1004.00 129.92 -998.40 1 0.8
execute if score elevator 4 matches 42 run effect clear @a[tag=started]
execute if score elevator 4 matches 61 as @a[tag=started] at @s if block ~ ~-5 ~ pumpkin run tp @s ~ ~1.4 ~
execute if score elevator 4 matches 61 run clone -1006 124 -1001 -1004 132 -996 -1006 125 -1001 replace move
execute if score elevator 4 matches 61 run playsound block.chain.break master @a[tag=started] -1004.00 130.92 -998.40 1 0.8
execute if score elevator 4 matches 81 as @a[tag=started] at @s if block ~ ~-5 ~ pumpkin run tp @s ~ ~1.4 ~
execute if score elevator 4 matches 81 run clone -1006 125 -1001 -1004 133 -996 -1006 126 -1001 replace move
execute if score elevator 4 matches 81 run playsound block.chain.break master @a[tag=started] -1004.00 131.92 -998.40 1 0.8
execute if score elevator 4 matches 81 run scoreboard players reset t_elevator 4
execute if score elevator 4 matches 81 run scoreboard players reset elevator 4