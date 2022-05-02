# ticking function, handles all things related to the copper door

# opening (singleplayer)
execute if score global multiplayer matches 1 unless score global copper_pressed matches 1..2 if block 41 108 41 minecraft:acacia_pressure_plate[powered=true] as @a[tag=started] at @s run playsound minecraft:block.chain.break master @s
execute if score global multiplayer matches 1 unless score global copper_pressed matches 1..2 if block 41 108 41 minecraft:acacia_pressure_plate[powered=true] as @a[tag=started] at @s run playsound minecraft:block.chain.place master @s
execute if score global multiplayer matches 1 unless score global copper_pressed matches 1..2 if block 41 108 41 minecraft:acacia_pressure_plate[powered=true] as @a[tag=started] at @s run playsound minecraft:block.piston.extend master @s ~ ~ ~ 0.5
execute if score global multiplayer matches 1 unless score global copper_pressed matches 1..2 if block 41 108 41 minecraft:acacia_pressure_plate[powered=true] run title @a[tag=started] actionbar "§a<Door Opened>"
execute if score global multiplayer matches 1 unless score global copper_pressed matches 1..2 if block 41 108 41 minecraft:acacia_pressure_plate[powered=true] run clone 37 73 52 38 80 57 50 110 45
execute if score global multiplayer matches 1 unless score global copper_pressed matches 1..2 if block 41 108 41 minecraft:acacia_pressure_plate[powered=true] run scoreboard players set global copper_pressed 1

# opening (multiplayer)
execute if score global multiplayer matches 2.. unless score global copper_pressed matches 1..2 unless entity @a[tag=started,x=41,y=108,z=41,distance=1..] as @a[tag=started] at @s run playsound minecraft:block.chain.break master @s
execute if score global multiplayer matches 2.. unless score global copper_pressed matches 1..2 unless entity @a[tag=started,x=41,y=108,z=41,distance=1..] as @a[tag=started] at @s run playsound minecraft:block.chain.place master @s
execute if score global multiplayer matches 2.. unless score global copper_pressed matches 1..2 unless entity @a[tag=started,x=41,y=108,z=41,distance=1..] as @a[tag=started] at @s run playsound minecraft:block.piston.extend master @s ~ ~ ~ 0.5
execute if score global multiplayer matches 2.. unless score global copper_pressed matches 1..2 unless entity @a[tag=started,x=41,y=108,z=41,distance=1..] run title @a[tag=started] actionbar "§a<Door Opened>"
execute if score global multiplayer matches 2.. unless score global copper_pressed matches 1..2 unless entity @a[tag=started,x=41,y=108,z=41,distance=1..] run clone 37 73 52 38 80 57 50 110 45
execute if score global multiplayer matches 2.. unless score global copper_pressed matches 1..2 unless entity @a[tag=started,x=41,y=108,z=41,distance=1..] run scoreboard players set global copper_pressed 1

# closing (singleplayer)
execute if score global multiplayer matches 1 if score global copper_pressed matches 1 if block 41 108 41 minecraft:acacia_pressure_plate[powered=false] as @a[tag=started] at @s run playsound minecraft:block.chain.break master @s
execute if score global multiplayer matches 1 if score global copper_pressed matches 1 if block 41 108 41 minecraft:acacia_pressure_plate[powered=false] as @a[tag=started] at @s run playsound minecraft:block.chain.place master @s
execute if score global multiplayer matches 1 if score global copper_pressed matches 1 if block 41 108 41 minecraft:acacia_pressure_plate[powered=false] as @a[tag=started] at @s run playsound minecraft:block.piston.contract master @s ~ ~ ~ 0.5
execute if score global multiplayer matches 1 if score global copper_pressed matches 1 if block 41 108 41 minecraft:acacia_pressure_plate[powered=false] run title @a[tag=started] actionbar "§c<Door Closed>"
execute if score global multiplayer matches 1 if score global copper_pressed matches 1 if block 41 108 41 minecraft:acacia_pressure_plate[powered=false] run clone 37 73 44 38 80 49 50 110 45
execute if score global multiplayer matches 1 if score global copper_pressed matches 1 if block 41 108 41 minecraft:acacia_pressure_plate[powered=false] run scoreboard players reset global copper_pressed

# closing (multiplayer)
execute if score global multiplayer matches 2.. if score global copper_pressed matches 1 if entity @a[tag=started,x=41,y=108,z=41,distance=1..] as @a[tag=started] at @s run playsound minecraft:block.chain.break master @s
execute if score global multiplayer matches 2.. if score global copper_pressed matches 1 if entity @a[tag=started,x=41,y=108,z=41,distance=1..] as @a[tag=started] at @s run playsound minecraft:block.chain.place master @s
execute if score global multiplayer matches 2.. if score global copper_pressed matches 1 if entity @a[tag=started,x=41,y=108,z=41,distance=1..] as @a[tag=started] at @s run playsound minecraft:block.piston.contract master @s ~ ~ ~ 0.5
execute if score global multiplayer matches 2.. if score global copper_pressed matches 1 if entity @a[tag=started,x=41,y=108,z=41,distance=1..] run title @a[tag=started] actionbar "§c<Door Closed>"
execute if score global multiplayer matches 2.. if score global copper_pressed matches 1 if entity @a[tag=started,x=41,y=108,z=41,distance=1..] run clone 37 73 44 38 80 49 50 110 45
execute if score global multiplayer matches 2.. if score global copper_pressed matches 1 if entity @a[tag=started,x=41,y=108,z=41,distance=1..] run scoreboard players reset global copper_pressed

# stuck in copper
execute as @a[tag=started] at @s if block ~ ~ ~ waxed_copper_block run tp @s ~-.1 ~ ~
execute as @a[tag=started] at @s if block ~ ~ ~ waxed_copper_block run tp @s ~-.1 ~ ~

# door override
execute unless score global copper_pressed matches 2 if block 54 112 46 minecraft:lever[powered=true] as @a[tag=started] at @s run playsound minecraft:block.chain.break master @s
execute unless score global copper_pressed matches 2 if block 54 112 46 minecraft:lever[powered=true] as @a[tag=started] at @s run playsound minecraft:block.chain.place master @s
execute unless score global copper_pressed matches 2 if block 54 112 46 minecraft:lever[powered=true] as @a[tag=started] at @s run playsound minecraft:block.piston.extend master @s ~ ~ ~ 0.5
execute unless score global copper_pressed matches 2 if block 54 112 46 minecraft:lever[powered=true] run clone 37 73 52 38 80 57 50 110 45
# narrator line
execute unless score global copper_pressed matches 2 if block 54 112 46 minecraft:lever[powered=true] run scoreboard players set id narrator 27
execute unless score global copper_pressed matches 2 if block 54 112 46 minecraft:lever[powered=true] run scoreboard players set global copper_pressed 2

# item activation prevention
execute as @e[type=item,x=41,y=108,z=41,distance=..1] positioned 41 108 41 run tp @s @p