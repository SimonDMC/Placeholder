# ticking function, does the rest of the stuff in 4-4 not covered by old_levels

# powder break
execute if block -1001 122 -978 birch_button[powered=true] if block -1001 121 -978 purple_concrete_powder run setblock -1001 121 -978 air destroy

# button
execute unless block -1001 121 -978 air if block -1001 122 -978 air run setblock -1001 122 -978 birch_button[face=floor,facing=south]

# secret
execute if block -1009 126 -979 polished_blackstone_button[powered=true] run setblock -1012 129 -981 minecraft:iron_trapdoor[facing=east]
execute if block -1009 126 -979 polished_blackstone_button[powered=true] run playsound block.iron_trapdoor.close master @a -1012 129 -981 1
execute if block -1009 126 -979 polished_blackstone_button[powered=true] run setblock -1009 126 -979 air destroy
execute unless block -1013 128 -981 air if block -1013 129 -981 air run setblock -1013 129 -981 birch_button[face=floor,facing=west]

# door reopen
execute if block -1007 128 -983 air run setblock -1005 125 -978 air

# furnace smelt
execute if block -990 120 -994 blast_furnace{Items:[{Slot:0b}]} unless block -990 120 -994 blast_furnace{Items:[{Slot:0b,id:"minecraft:sand"}]} run item replace block -998 104 -986 container.0 from block -990 120 -994 container.0
execute if block -990 120 -994 blast_furnace{Items:[{Slot:0b}]} unless block -990 120 -994 blast_furnace{Items:[{Slot:0b,id:"minecraft:sand"}]} positioned -990 120 -994 run playsound entity.villager.no master @p
execute if block -990 120 -994 blast_furnace{Items:[{Slot:0b}]} unless block -990 120 -994 blast_furnace{Items:[{Slot:0b,id:"minecraft:sand"}]} positioned -990 120 -994 run loot give @p mine -998 104 -986 air{drop_contents:1b}
execute if block -990 120 -994 blast_furnace{Items:[{Slot:0b}]} unless block -990 120 -994 blast_furnace{Items:[{Slot:0b,id:"minecraft:sand"}]} run item replace block -990 120 -994 container.0 with air

# furnace fuel
execute if block -990 120 -994 blast_furnace{Items:[{Slot:1b}]} unless block -990 120 -994 blast_furnace{Items:[{Slot:1b,id:"minecraft:oak_planks"}]} run item replace block -1000 104 -986 container.0 from block -990 120 -994 container.1
execute if block -990 120 -994 blast_furnace{Items:[{Slot:1b}]} unless block -990 120 -994 blast_furnace{Items:[{Slot:1b,id:"minecraft:oak_planks"}]} positioned -990 120 -994 run playsound entity.villager.no master @p
execute if block -990 120 -994 blast_furnace{Items:[{Slot:1b}]} unless block -990 120 -994 blast_furnace{Items:[{Slot:1b,id:"minecraft:oak_planks"}]} positioned -990 120 -994 run loot give @p mine -1000 104 -986 air{drop_contents:1b}
execute if block -990 120 -994 blast_furnace{Items:[{Slot:1b}]} unless block -990 120 -994 blast_furnace{Items:[{Slot:1b,id:"minecraft:oak_planks"}]} run item replace block -990 120 -994 container.1 with air

# banner craft give
execute as @a[tag=started] if score @s banner matches 1 run clear @s dead_fire_coral
execute as @a[tag=started] if score @s banner matches 1 run give @s white_banner{CanPlaceOn:["orange_concrete_powder"],display:{Name:'{"text":"White Banner","color":"#FFB217","italic":false}'}}
execute as @a[tag=started] if score @s banner matches 1 run scoreboard players set @s banner 2

# furnace perma-smelt
execute if block -990 120 -994 blast_furnace{BurnTime:149s} run data merge block -990 120 -994 {BurnTime:1200000}

# stone dig-down soft-lock
execute as @a[tag=started] if predicate simondmc:lvl4/stone_stuck at @s unless block ~ ~-.1 ~ air unless block ~-1 ~1 ~ air unless block ~1 ~1 ~ air unless block ~ ~1 ~-1 air unless block ~ ~1 ~1 air run title @s actionbar {"text":">:(","color":"dark_red"}
execute as @a[tag=started] if predicate simondmc:lvl4/stone_stuck at @s unless block ~ ~-.1 ~ air unless block ~-1 ~1 ~ air unless block ~1 ~1 ~ air unless block ~ ~1 ~-1 air unless block ~ ~1 ~1 air run effect give @s levitation 1 3 true
execute as @a[tag=started] if predicate simondmc:lvl4/stone_stuck at @s if block ~-1 ~ ~ air if block ~1 ~ ~ air if block ~ ~ ~-1 air if block ~ ~ ~1 air run effect clear @s levitation

# level completion
execute as @a[tag=started,nbt={Inventory:[{id:"minecraft:potion",tag:{Potion:"minecraft:long_leaping"}}]}] run scoreboard players set pot 4 1
execute as @a[tag=started] if score @s banner matches 2 if score pot 4 matches 1 if entity @a[tag=started,nbt={Inventory:[{id:"minecraft:campfire"}]}] run scoreboard players set complete4 4 1

# let player know they have to craft
execute unless score complete4 4 matches 1 if score pot 4 matches 1 run title @a[tag=started] actionbar "§eYou are missing some items you will need later."

# purple room door unlock
execute unless block -998 122 -970 barrel{Items:[{Slot:13b}]} unless block -1003 121 -973 purple_shulker_box{Items:[{Slot:13b}]} run setblock -1001 120 -975 air

# campfire nbt craft
execute as @a[tag=started] if score @s campfire_craft matches 1 run clear @s dead_horn_coral_fan
execute as @a[tag=started] if score @s campfire_craft matches 1 run give @s campfire{CanPlaceOn:["coal_block"]}
execute as @a[tag=started] if score @s campfire_craft matches 1 run scoreboard players reset @s campfire_craft

# enter prototype 1 (narrator line)
execute unless score entered_p1 4 matches 1 if entity @a[tag=started,x=-999,y=120,z=-994,dy=1] run scoreboard players set id narrator 12
execute unless score entered_p1 4 matches 1 if entity @a[tag=started,x=-999,y=120,z=-994,dy=1] run scoreboard players set entered_p1 4 1

# enter prototype 2 (narrator line)
execute unless score entered_p2 4 matches 1 if entity @a[tag=started,x=-1004,y=128,z=-978,dy=1] run scoreboard players set id narrator 13
execute unless score entered_p2 4 matches 1 if entity @a[tag=started,x=-1004,y=128,z=-978,dy=1] run scoreboard players set entered_p2 4 1

# elevator button in secret
execute if block -1021 132 -983 air run setblock -1021 132 -983 birch_button[facing=west,face=floor]