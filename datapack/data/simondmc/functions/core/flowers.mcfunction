# ticking function, makes sure no flower pots can be interacted with

clear @a[gamemode=adventure] #flowers

setblock -7 102 -9 minecraft:potted_cornflower
setblock 1020 104 1034 minecraft:potted_orange_tulip
execute if score global crane matches 0 run setblock 0 106 21 minecraft:potted_dandelion
execute if score global crane matches 1 run setblock 0 104 21 minecraft:potted_dandelion
execute if score global crane matches 2 run setblock 0 103 21 minecraft:potted_dandelion
execute if score global crane matches 3 run setblock 0 101 21 minecraft:potted_dandelion
setblock -23 89 -26 potted_orange_tulip
setblock -15 87 -4 potted_orange_tulip
execute if score done vault matches 1 run setblock 1098 103 1036 potted_orange_tulip