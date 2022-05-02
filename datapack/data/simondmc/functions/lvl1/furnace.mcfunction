# ticking function, handles everything related to the level 1 furnace (mostly soft-lock prevention)

# makes sure it always burns
data merge block 7 101 -8 {BurnTime:1200000}

# smelting_wood scoreboard control (its a little confusing but for now it works so no touchy unless something breaks) (actually this whole function is sketchy just dont touch it at all)
execute unless block 7 101 -8 furnace{Items:[{Slot:0b,id:"minecraft:oak_log"}]} unless score global smelting_wood matches 2 run scoreboard players set global smelting_wood 0
execute if block 7 101 -8 furnace{Items:[{Slot:0b,id:"minecraft:oak_log"}]} unless score global smelting_wood matches 2 run scoreboard players set global smelting_wood 1
execute if block 7 101 -8 furnace{Items:[{Slot:2b,id:"minecraft:charcoal"}]} run scoreboard players set global smelting_wood 2

# overflow wood check
execute if score global smelting_wood matches 2 if block 7 101 -8 furnace positioned 7 101 -8 run playsound custom.furnace master @a
execute if score global smelting_wood matches 2 if block 7 101 -8 furnace run setblock 7 101 -8 air destroy

# bad input
execute if block 7 101 -8 furnace{Items:[{Slot:0b}]} unless block 7 101 -8 furnace{Items:[{Slot:0b,id:"minecraft:oak_log"}]} unless block 7 101 -8 furnace{Items:[{Slot:0b,id:"minecraft:oak_planks"}]} run item replace block 0 93 0 container.0 with air
execute if block 7 101 -8 furnace{Items:[{Slot:0b}]} unless block 7 101 -8 furnace{Items:[{Slot:0b,id:"minecraft:oak_log"}]} unless block 7 101 -8 furnace{Items:[{Slot:0b,id:"minecraft:oak_planks"}]} run data modify block 0 93 0 Items[{Slot:0b}] set from block 7 101 -8 Items[{Slot:0b}]
execute if block 7 101 -8 furnace{Items:[{Slot:0b}]} unless block 7 101 -8 furnace{Items:[{Slot:0b,id:"minecraft:oak_log"}]} unless block 7 101 -8 furnace{Items:[{Slot:0b,id:"minecraft:oak_planks"}]} positioned 7 101 -8 run playsound entity.villager.no master @p
execute if block 7 101 -8 furnace{Items:[{Slot:0b}]} unless block 7 101 -8 furnace{Items:[{Slot:0b,id:"minecraft:oak_log"}]} unless block 7 101 -8 furnace{Items:[{Slot:0b,id:"minecraft:oak_planks"}]} positioned 7 101 -8 run loot give @p mine 0 93 0 air{drop_contents:1b}
execute if block 7 101 -8 furnace{Items:[{Slot:0b}]} unless block 7 101 -8 furnace{Items:[{Slot:0b,id:"minecraft:oak_log"}]} unless block 7 101 -8 furnace{Items:[{Slot:0b,id:"minecraft:oak_planks"}]} run item replace block 7 101 -8 container.0 with air