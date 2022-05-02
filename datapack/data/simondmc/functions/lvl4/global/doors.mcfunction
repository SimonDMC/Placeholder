# ticking function, controlls the opening and closing of all doors after finishing

# general close
execute as @a[tag=started] if predicate simondmc:lvl4/door_close if score tp 4 matches 1 run tp @e[type=item,tag=!paper] @s
execute as @a[tag=started] if predicate simondmc:lvl4/door_close if score global multiplayer matches 2.. if score tp 4 matches 1 run tp @a[tag=started] @s
execute as @a[tag=started] if predicate simondmc:lvl4/door_close if score global multiplayer matches 2.. run scoreboard players reset tp 4

# 4-1 open
execute unless block -985 103 -1003 barrel{Items:[{Slot:12b}]} unless block -985 103 -1003 barrel{Items:[{Slot:14b}]} unless score 1 4 matches 1 run setblock -995 99 -997 air
execute unless block -985 103 -1003 barrel{Items:[{Slot:12b}]} unless block -985 103 -1003 barrel{Items:[{Slot:14b}]} unless score 1 4 matches 1 run setblock -996 103 -998 air
execute unless block -985 103 -1003 barrel{Items:[{Slot:12b}]} unless block -985 103 -1003 barrel{Items:[{Slot:14b}]} unless score 1 4 matches 1 run setblock -995 100 -998 air
execute unless block -985 103 -1003 barrel{Items:[{Slot:12b}]} unless block -985 103 -1003 barrel{Items:[{Slot:14b}]} unless score 1 4 matches 1 run scoreboard players set tp 4 1
execute unless block -985 103 -1003 barrel{Items:[{Slot:12b}]} unless block -985 103 -1003 barrel{Items:[{Slot:14b}]} unless score 1 4 matches 1 run scoreboard players set 1 4 1

# 4-1 close
execute as @a[tag=started] if predicate simondmc:lvl4/door_close run setblock -995 100 -998 redstone_block

# 4-2 open
execute unless block -999 108 -1007 barrel{Items:[{Slot:12b}]} unless block -999 108 -1007 barrel{Items:[{Slot:14b}]} unless score 2 4 matches 1 run setblock -999 105 -1005 air
execute unless block -999 108 -1007 barrel{Items:[{Slot:12b}]} unless block -999 108 -1007 barrel{Items:[{Slot:14b}]} unless score 2 4 matches 1 run setblock -999 106 -1004 air
execute unless block -999 108 -1007 barrel{Items:[{Slot:12b}]} unless block -999 108 -1007 barrel{Items:[{Slot:14b}]} unless score 2 4 matches 1 run setblock -998 109 -1002 air
execute unless block -999 108 -1007 barrel{Items:[{Slot:12b}]} unless block -999 108 -1007 barrel{Items:[{Slot:14b}]} unless score 2 4 matches 1 run scoreboard players set tp 4 1
execute unless block -999 108 -1007 barrel{Items:[{Slot:12b}]} unless block -999 108 -1007 barrel{Items:[{Slot:14b}]} unless score 2 4 matches 1 run scoreboard players set 2 4 1

# 4-2 close
execute as @a[tag=started] if predicate simondmc:lvl4/door_close run setblock -999 106 -1004 redstone_block

# 4-3 open
execute unless block -1015 114 -1006 red_shulker_box{Items:[{Slot:13b}]} unless score 3 4 matches 1 run setblock -1005 111 -999 air
execute unless block -1015 114 -1006 red_shulker_box{Items:[{Slot:13b}]} unless score 3 4 matches 1 run setblock -1002 115 -1000 air
execute unless block -1015 114 -1006 red_shulker_box{Items:[{Slot:13b}]} unless score 3 4 matches 1 run setblock -1004 112 -999 air
execute unless block -1015 114 -1006 red_shulker_box{Items:[{Slot:13b}]} unless score 3 4 matches 1 run scoreboard players set tp 4 1
execute unless block -1015 114 -1006 red_shulker_box{Items:[{Slot:13b}]} unless score 3 4 matches 1 run kill @e[tag=sus]
# item frame plops off when using shulker
execute unless block -1015 114 -1006 red_shulker_box{Items:[{Slot:13b}]} unless score 3 4 matches 1 run gamerule randomTickSpeed 0
execute unless block -1015 114 -1006 red_shulker_box{Items:[{Slot:13b}]} unless score 3 4 matches 1 run scoreboard players set 3 4 1

# 4-3 close
execute as @a[tag=started] if predicate simondmc:lvl4/door_close run setblock -1004 112 -999 redstone_block

# 4-4 open
execute if score complete4 4 matches 1 unless score 4 4 matches 1 run setblock -999 117 -993 air
execute if score complete4 4 matches 1 unless score 4 4 matches 1 run setblock -999 118 -994 air
execute if score complete4 4 matches 1 unless score 4 4 matches 1 run setblock -1000 121 -996 air
execute if score complete4 4 matches 1 unless score 4 4 matches 1 run scoreboard players set tp 4 1
# sorry it was kinda annoying and in the way
execute if score complete4 4 matches 1 unless score 4 4 matches 1 run clear @a[tag=started] golden_shovel
execute if score complete4 4 matches 1 unless score 4 4 matches 1 run clear @a[tag=started] scaffolding
execute if score complete4 4 matches 1 unless score 4 4 matches 1 run clear @a[tag=started] gravel
execute if score complete4 4 matches 1 unless score 4 4 matches 1 run kill @e[type=item,nbt={Item:{id:"minecraft:golden_shovel"}}]
execute if score complete4 4 matches 1 unless score 4 4 matches 1 run kill @e[type=item,nbt={Item:{id:"minecraft:scaffolding"}}]
execute if score complete4 4 matches 1 unless score 4 4 matches 1 run kill @e[type=item,nbt={Item:{id:"minecraft:gravel"}}]
execute if score complete4 4 matches 1 unless score 4 4 matches 1 run recipe take @a[tag=started] blaze_powder
execute if score complete4 4 matches 1 unless score 4 4 matches 1 run scoreboard players set 4 4 1

# 4-4 close
execute as @a[tag=started] if predicate simondmc:lvl4/door_close run setblock -999 118 -994 redstone_block

# 4-5 open
execute if score evoker 4 matches 0 unless score 5 4 matches 1 run setblock -989 127 -997 air
execute if score evoker 4 matches 0 unless score 5 4 matches 1 run setblock -993 123 -999 air
execute if score evoker 4 matches 0 unless score 5 4 matches 1 run setblock -994 124 -999 air
execute if score evoker 4 matches 0 unless score 5 4 matches 1 run setblock -996 127 -998 air
execute if score evoker 4 matches 0 unless score 5 4 matches 1 run scoreboard players set tp 4 1
execute if score evoker 4 matches 0 unless score 5 4 matches 1 run scoreboard players set 5 4 1

# 4-5 close
execute as @a[tag=started] if predicate simondmc:lvl4/door_close run setblock -994 124 -999 redstone_block

# 4-6 open
execute if block -999 134 -1015 barrel unless block -999 134 -1015 barrel{Items:[{Slot:12b}]} unless block -999 134 -1015 barrel{Items:[{Slot:14b}]} unless score 6 4 matches 1 run setblock -999 129 -1005 air
execute if block -999 134 -1015 barrel unless block -999 134 -1015 barrel{Items:[{Slot:12b}]} unless block -999 134 -1015 barrel{Items:[{Slot:14b}]} unless score 6 4 matches 1 run setblock -999 130 -1004 air
execute if block -999 134 -1015 barrel unless block -999 134 -1015 barrel{Items:[{Slot:12b}]} unless block -999 134 -1015 barrel{Items:[{Slot:14b}]} unless score 6 4 matches 1 run setblock -998 133 -1002 air
execute if block -999 134 -1015 barrel unless block -999 134 -1015 barrel{Items:[{Slot:12b}]} unless block -999 134 -1015 barrel{Items:[{Slot:14b}]} unless score 6 4 matches 1 run scoreboard players set tp 4 1
execute if block -999 134 -1015 barrel unless block -999 134 -1015 barrel{Items:[{Slot:12b}]} unless block -999 134 -1015 barrel{Items:[{Slot:14b}]} unless score 6 4 matches 1 run scoreboard players set 6 4 1

# 4-6 close
execute as @a[tag=started] if predicate simondmc:lvl4/door_close run setblock -999 130 -1004 redstone_block

# 4-7 open
execute if block -1008 139 -998 purple_wall_banner if block -1008 139 -999 blue_wall_banner if block -1008 139 -1000 red_wall_banner if block -1009 141 -1000 lime_wall_banner if block -1009 141 -999 yellow_wall_banner if block -1009 141 -998 orange_wall_banner if score map 4 matches 1 unless score 7 4 matches 1 run setblock -1002 139 -1000 air
execute if block -1008 139 -998 purple_wall_banner if block -1008 139 -999 blue_wall_banner if block -1008 139 -1000 red_wall_banner if block -1009 141 -1000 lime_wall_banner if block -1009 141 -999 yellow_wall_banner if block -1009 141 -998 orange_wall_banner if score map 4 matches 1 unless score 7 4 matches 1 run setblock -1005 136 -998 air
execute if block -1008 139 -998 purple_wall_banner if block -1008 139 -999 blue_wall_banner if block -1008 139 -1000 red_wall_banner if block -1009 141 -1000 lime_wall_banner if block -1009 141 -999 yellow_wall_banner if block -1009 141 -998 orange_wall_banner if score map 4 matches 1 unless score 7 4 matches 1 run scoreboard players set 7 4 1

# 4-7 close no