# ticking function, istg i am so done with making all these smelting soft-lock preventions

# furnace
execute if block 1021 101 1034 furnace{Items:[{Slot:1b,id:"minecraft:stick",Count:1b}]} positioned 1021 101 1034 run give @p stick 1
execute if block 1021 101 1034 furnace{Items:[{Slot:1b,id:"minecraft:stick",Count:2b}]} positioned 1021 101 1034 run give @p stick 2
execute if block 1021 101 1034 furnace{Items:[{Slot:1b,id:"minecraft:stick",Count:3b}]} positioned 1021 101 1034 run give @p stick 3
execute if block 1021 101 1034 furnace{Items:[{Slot:1b,id:"minecraft:stick",Count:4b}]} positioned 1021 101 1034 run give @p stick 4
execute if block 1021 101 1034 furnace{Items:[{Slot:1b,id:"minecraft:stick"}]} run item replace block 1021 101 1034 container.1 with air

# blast furnace
execute if block 1019 101 1034 blast_furnace{Items:[{Slot:1b,id:"minecraft:stick",Count:1b}]} positioned 1019 101 1034 run give @p stick 1
execute if block 1019 101 1034 blast_furnace{Items:[{Slot:1b,id:"minecraft:stick",Count:2b}]} positioned 1019 101 1034 run give @p stick 2
execute if block 1019 101 1034 blast_furnace{Items:[{Slot:1b,id:"minecraft:stick",Count:3b}]} positioned 1019 101 1034 run give @p stick 3
execute if block 1019 101 1034 blast_furnace{Items:[{Slot:1b,id:"minecraft:stick",Count:4b}]} positioned 1019 101 1034 run give @p stick 4
execute if block 1019 101 1034 blast_furnace{Items:[{Slot:1b,id:"minecraft:stick"}]} run item replace block 1019 101 1034 container.1 with air