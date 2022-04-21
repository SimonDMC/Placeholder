# ticking function, controls the hint system and activates the hint modules

# levels
execute as @a[tag=lvl1] if score @s hint matches 1 unless score global hint matches 1 run function simondmc:core/hint/lvl1
execute as @a[tag=lvl2] if score @s hint matches 1 unless score global hint matches 1 run function simondmc:core/hint/lvl2
execute as @a[tag=lvl3] if score @s hint matches 1 unless score global hint matches 1 unless score @s tree matches -1 run function simondmc:core/hint/lvl3
execute as @a[tag=lvl4] if score @s hint matches 1 unless score global hint matches 1 run function simondmc:core/hint/lvl4

# add to scoreboard
execute as @a if score @s hint matches 1 unless score global hint matches 1 run scoreboard players add @s hints 1

# narrator line (decide between short or long)
# short (0-15)
execute as @a unless score first hint matches 1 if score @s hint matches 1 if score m timer matches ..15 if score h timer matches 0 run scoreboard players set id narrator 24
# long (16-59)
execute as @a unless score first hint matches 1 if score @s hint matches 1 if score m timer matches 16.. if score h timer matches 0 run scoreboard players set id narrator 25
# long (1h+)
execute as @a unless score first hint matches 1 if score @s hint matches 1 if score h timer matches 1.. run scoreboard players set id narrator 25

execute as @a if score @s hint matches 1 run scoreboard players set first hint 1 

# item replacement
execute as @a if score @s hint matches 1 unless score global hint matches 1 run item replace entity @a weapon.offhand with lime_candle{display:{Name:'{"text":"Clue","color":"#F77EEA","bold":true,"italic":false}',Lore:['[{"text":"Press ","color":"gray","italic":false},{"keybind":"key.swapOffhand","color":"yellow","bold":true},{"text":" to highlight all "}]','{"text":"blocks necessary for puzzles. ","color":"gray","italic":false}','{"text":" "}','[{"text":"Orange","color":"gold","italic":false},{"text":": Interact","color":"gray","italic":false}]','[{"text":"Green","color":"#77E85A","italic":false},{"text":":  Destroy","color":"gray","italic":false}]','[{"text":"Red","color":"red","italic":false},{"text":":     Storage","color":"gray","italic":false}]']}}
execute as @a if score @s hint matches 1 if score global hint matches 1 run item replace entity @a weapon.offhand with gray_candle{display:{Name:'{"text":"Clue","color":"#F77EEA","bold":true,"italic":false}',Lore:['[{"text":"Press ","color":"gray","italic":false},{"keybind":"key.swapOffhand","color":"yellow","bold":true},{"text":" to highlight all "}]','{"text":"blocks necessary for puzzles. ","color":"gray","italic":false}','{"text":" "}','[{"text":"Orange","color":"gold","italic":false},{"text":": Interact","color":"gray","italic":false}]','[{"text":"Green","color":"#77E85A","italic":false},{"text":":  Destroy","color":"gray","italic":false}]','[{"text":"Red","color":"red","italic":false},{"text":":     Storage","color":"gray","italic":false}]']}}

# activates and deativates it
execute as @a if score @s hint matches 1 if score global hint matches 1 run kill @e[tag=glower]
execute as @a if score @s hint matches 1 if score global hint matches 1 run scoreboard players set global hint 0
execute as @a if score @s hint matches 1 unless score global hint matches 0..1 run scoreboard players set global hint 1
execute as @a if score @s hint matches 1 run scoreboard players reset @s hint
# this sounds stupid but ik what im doing
execute if score global hint matches 0 run scoreboard players reset global hint

# kill hint items
kill @e[type=item,nbt={Item:{id:"minecraft:gray_candle"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:lime_candle"}}]