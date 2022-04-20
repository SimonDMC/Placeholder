# ticking function, handles everything with the evoker

# bossbar handling
execute unless score 6 4 matches 1 run bossbar set evoker players @a[predicate=simondmc:lvl4/evoker]
execute if score 6 4 matches 1 run bossbar set evoker players
# set value from scoreboard
execute store result bossbar evoker value run scoreboard players get evoker 4

# reset button
execute if block -989 127 -997 oak_button[powered=true] positioned -989 127 -997 run function simondmc:lvl4/4-5/reset

# evoker safety
data merge entity @e[tag=evoker,limit=1] {Health:24f}
execute as @a if predicate simondmc:lvl4/evoker run effect give @s weakness 4 4 true
execute as @a unless predicate simondmc:lvl4/evoker run effect clear @s weakness

# tnt
execute if entity @a[predicate=simondmc:lvl4/evoker] run data modify entity @e[type=tnt,limit=1] Motion[0] set value 0.0000
execute if entity @a[predicate=simondmc:lvl4/evoker] run data modify entity @e[type=tnt,limit=1] Motion[2] set value 0.0000
# mostly stolen from 2-2
execute as @e[type=tnt,nbt={Fuse:1s}] at @s run particle explosion ~ ~ ~ 1 1 1 0 10
execute as @e[type=tnt,nbt={Fuse:1s}] at @s run playsound entity.generic.explode master @a ~ ~ ~ 1.5
execute as @e[type=tnt,nbt={Fuse:1s}] if entity @a[predicate=simondmc:lvl4/evoker] run effect give @e[tag=evoker] instant_damage
execute as @e[type=tnt,nbt={Fuse:1s}] if entity @a[predicate=simondmc:lvl4/evoker] run scoreboard players remove evoker 4 1
execute as @e[type=tnt,nbt={Fuse:1s}] if entity @a[predicate=simondmc:lvl4/evoker] run setblock -989 125 -999 coal_block
execute as @e[type=tnt,nbt={Fuse:1s}] run kill @s
execute if entity @e[type=tnt] as @a[nbt={SelectedItem:{id:"minecraft:flint_and_steel",Count:1b,tag:{Damage:34}}}] at @s run playsound entity.item.break master @s
execute if entity @e[type=tnt] as @a[nbt={SelectedItem:{id:"minecraft:flint_and_steel",Count:1b,tag:{Damage:34}}}] run clear @a flint_and_steel
execute if entity @e[type=tnt] as @a[nbt={SelectedItem:{id:"minecraft:flint_and_steel",Count:1b,tag:{Damage:0}}}] run item replace entity @s weapon.mainhand with flint_and_steel{CanPlaceOn:["minecraft:yellow_concrete","minecraft:tnt"],HideFlags:4,Damage:33}

# berry
execute if block -989 126 -999 sweet_berry_bush run scoreboard players add berry 4 1
execute if score berry 4 matches 10 run setblock -989 126 -999 sweet_berry_bush[age=1]
execute if score berry 4 matches 20 run setblock -989 126 -999 sweet_berry_bush[age=2]
execute if score berry 4 matches 30 run setblock -989 126 -999 sweet_berry_bush[age=3]
execute if score berry 4 matches 40 run effect give @e[tag=evoker] instant_damage
execute if score berry 4 matches 40 run scoreboard players remove evoker 4 1
execute if score berry 4 matches 50 run setblock -989 126 -999 air destroy
execute if score berry 4 matches 50 run scoreboard players set berry 4 51
kill @e[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}]

# water
execute if block -989 128 -999 pointed_dripstone[waterlogged=true] run scoreboard players set t_water 4 1
execute if score t_water 4 matches 1 run scoreboard players add water 4 1
execute if score water 4 matches 1 run setblock -989 127 -999 moving_piston
execute if score water 4 matches 1 run setblock -989 126 -999 moving_piston
execute if score water 4 matches 8 run setblock -989 127 -999 air
execute if score water 4 matches 20 run setblock -989 126 -999 air
execute if score water 4 matches 30 run effect give @e[tag=evoker] instant_damage
execute if score water 4 matches 30 run scoreboard players remove evoker 4 1
execute if score water 4 matches 40 as @e[tag=evoker] at @s run tp @s ~ ~ ~ ~90 ~
execute if score water 4 matches 50 run setblock -989 126 -1000 sponge
execute if score water 4 matches 60 as @e[tag=evoker] at @s run tp @s ~ ~ ~ ~-90 ~
execute if score water 4 matches 70 run setblock -989 126 -1000 moving_piston destroy
execute if score water 4 matches 71 run scoreboard players reset t_water 4
clear @a bucket

# pufferfish
execute if block -989 126 -999 water unless block -989 126 -999 water[level=8] run scoreboard players add puffer 4 1
scoreboard players add @e[type=pufferfish] 4 1
execute as @e[type=pufferfish] if score @s 4 matches 5.. run kill @s
execute if score puffer 4 matches 5 run effect give @e[tag=evoker] instant_damage
execute if score puffer 4 matches 5 run scoreboard players remove evoker 4 1
execute if score puffer 4 matches 5 run setblock -989 126 -999 air
execute if score puffer 4 matches 5 run scoreboard players set puffer 4 6

# dripstone (extremely hacky way but hey it works)
execute as @e[type=minecraft:falling_block] at @s if block ~ ~-.5 ~ #concrete run scoreboard players remove evoker 4 1
kill @e[type=item,nbt={Item:{id:"minecraft:pointed_dripstone"}}]

# fire
execute if block -989 126 -999 fire run scoreboard players set t_fire 4 1
execute if block -989 126 -999 fire as @a[nbt={SelectedItem:{id:"minecraft:flint_and_steel",Count:1b,tag:{Damage:34}}}] at @s run playsound entity.item.break master @s
execute if block -989 126 -999 fire as @a[nbt={SelectedItem:{id:"minecraft:flint_and_steel",Count:1b,tag:{Damage:34}}}] run clear @a flint_and_steel
execute if block -989 126 -999 fire as @a[nbt={SelectedItem:{id:"minecraft:flint_and_steel",Count:1b,tag:{Damage:0}}}] run item replace entity @s weapon.mainhand with flint_and_steel{CanPlaceOn:["minecraft:yellow_concrete","minecraft:tnt"],HideFlags:4,Damage:33}
execute if score t_fire 4 matches 1 run scoreboard players add fire 4 1
execute if score fire 4 matches 10 run effect give @e[tag=evoker] instant_damage
execute if score fire 4 matches 10 run scoreboard players remove evoker 4 1
execute if score fire 4 matches 20 as @e[tag=evoker] at @s run tp @s ~ ~ ~ ~ ~30
execute if score fire 4 matches 30 run setblock -989 126 -999 air
execute if score fire 4 matches 30 positioned -989 126 -999 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.5
execute if score fire 4 matches 40 as @e[tag=evoker] at @s run tp @s ~ ~ ~ ~ ~-30
execute if score fire 4 matches 40 run scoreboard players reset t_fire 4
execute if score fire 4 matches 40 run scoreboard players reset fire 4

# stop jump
execute as @a if predicate simondmc:lvl4/evoker run effect clear @s jump_boost
execute as @a if predicate simondmc:lvl4/evoker run scoreboard players reset jump 4

# dynamic silence
execute as @a if predicate simondmc:lvl4/evoker as @e[tag=evoker] run data merge entity @s {Silent:0b}
execute as @a unless predicate simondmc:lvl4/evoker as @e[tag=evoker] run data merge entity @s {Silent:1b}

# campfire
execute if entity @a[nbt={SelectedItem:{id:"minecraft:campfire"}}] run tp @e[tag=campfire1] -988.8 126 -998.2
execute if entity @a[nbt={SelectedItem:{id:"minecraft:campfire"}}] run tp @e[tag=campfire2] -988.8 126 -998.8
execute unless entity @a[nbt={SelectedItem:{id:"minecraft:campfire"}}] run tp @e[tag=campfire1] -1000 83 -1000
execute unless entity @a[nbt={SelectedItem:{id:"minecraft:campfire"}}] run tp @e[tag=campfire2] -1000 83 -1000
execute as @a if score @s clicked matches 1.. as @s[nbt={SelectedItem:{id:"minecraft:campfire"}}] if block -989 125 -999 coal_block run scoreboard players set t_campfire 4 1
execute if score t_campfire 4 matches 1 run scoreboard players add campfire 4 1
execute if score campfire 4 matches 1 run clear @a campfire
execute if score campfire 4 matches 1 run setblock -989 126 -999 campfire
execute if score campfire 4 matches 1 as @e[tag=evoker] at @s run tp @s ~ ~.5 ~
execute if score campfire 4 matches 1 run effect give @e[tag=evoker] instant_damage
execute if score campfire 4 matches 1 run scoreboard players remove evoker 4 1
execute if score campfire 4 matches 10 as @e[tag=evoker] at @s run tp @s ~ ~ ~ ~ ~30
execute if score campfire 4 matches 20 unless score evoker 4 matches 0 run gamerule doTileDrops false
execute if score campfire 4 matches 20 unless score evoker 4 matches 0 run setblock -989 126 -999 air destroy
execute if score campfire 4 matches 20 unless score evoker 4 matches 0 run gamerule doTileDrops true
execute if score campfire 4 matches 30 unless score evoker 4 matches 0 as @e[tag=evoker] at @s run tp @s ~ ~-.5 ~ ~ ~-30
execute if score campfire 4 matches 31 run scoreboard players reset t_campfire 4
execute as @a if predicate simondmc:lvl4/evoker run scoreboard players reset @a clicked

# kill
execute if score evoker 4 matches 0 run kill @e[tag=evoker]
execute as @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying"}}] run data merge entity @s {Item:{id:"totem_of_undying",tag:{display:{Name:'{"text":"Totem of Undying","color":"#C1BFFF","italic":false}',Lore:['{"text":"A powerful item capable","color":"gray"}','{"text":"of saving your life","color":"gray"}','{"text":"exactly once.","color":"gray"}']}}}}

# tp in
execute if score global multiplayer matches 2.. as @a[x=-994,y=126,z=-999,dy=1] unless score tp5 4 matches 1 run tp @a @s
execute if score global multiplayer matches 2.. as @a[x=-994,y=126,z=-999,dy=1] run scoreboard players set tp5 4 1