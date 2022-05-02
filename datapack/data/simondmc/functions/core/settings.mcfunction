# ticking function, handles all general settings

# effects
effect give @a saturation 1000000 0 true
effect give @a night_vision 1000000 0 true
effect give @a resistance 1000000 2 true

# item despawn prevention
execute as @e[type=item,nbt={Age:10s}] run data merge entity @s {Age:5}

# join system
execute as @a unless score @s leave matches 1.. run tag @s remove map
execute as @a unless score @s leave matches 1.. run scoreboard players set @s leave_const 1
execute as @a unless score @s leave matches 1.. run scoreboard players set @s leave 1

execute as @a if score @s leave > @s leave_const unless score global multiplayer matches 1.. run tag @s remove map
execute as @a if score @s leave > @s leave_const unless score global multiplayer matches 1.. run scoreboard players operation @s leave_const = @s leave
# dont reset everything if map is in progress
execute as @a[tag=!map] unless score started intro matches 1 run function simondmc:core/join
execute as @a[tag=!map] if score started intro matches 1 run tag @s add map

# scoreboard thingies
scoreboard objectives add gray_concrete_powder crafted:budding_amethyst
scoreboard objectives add campfire_craft crafted:dead_horn_coral_fan
scoreboard objectives add carrot_on_a_stick used:carrot_on_a_stick
scoreboard objectives add fire_charge crafted:bubble_coral_fan
scoreboard objectives add hint used:warped_fungus_on_a_stick
scoreboard objectives add anchor crafted:bubble_coral_block
scoreboard objectives add clicked custom:talked_to_villager
scoreboard objectives add wooden_pickaxe crafted:tube_coral
scoreboard objectives add stone_pickaxe crafted:brain_coral
scoreboard objectives add netherwartTEMP mined:nether_wart
scoreboard objectives add crystal crafted:brain_coral_fan
scoreboard objectives add craft_planks crafted:oak_planks
scoreboard objectives add rod crafted:dead_tube_coral_fan
scoreboard objectives add banner crafted:dead_fire_coral
scoreboard objectives add tnt4 crafted:brain_coral_block
scoreboard objectives add netherwart mined:nether_wart
scoreboard objectives add campfireTEMP mined:campfire
scoreboard objectives add oak_woodTEMP mined:oak_wood
scoreboard objectives add craft_sticks crafted:stick
scoreboard objectives add berries used:sweet_berries
scoreboard objectives add soul_soil used:soul_soil
scoreboard objectives add trident crafted:trident
scoreboard objectives add pearl2 used:ender_pearl
scoreboard objectives add oak_wood mined:oak_wood
scoreboard objectives add campfire mined:campfire
scoreboard objectives add tnt crafted:lapis_block
scoreboard objectives add leave custom:leave_game
scoreboard objectives add pearl used:ender_pearl
scoreboard objectives add copper_pressed dummy
scoreboard objectives add tree used:bone_meal
scoreboard objectives add smelting_wood dummy
scoreboard objectives add walkthrough trigger
scoreboard objectives add coal mined:coal_ore
scoreboard objectives add grass_spread dummy
scoreboard objectives add pearl_inform dummy
scoreboard objectives add s_death deathCount
scoreboard objectives add spectator trigger
scoreboard objectives add morestats trigger
scoreboard objectives add stone mined:stone
scoreboard objectives add water_timer dummy
scoreboard objectives add multiplayer dummy
scoreboard objectives add leave_const dummy
scoreboard objectives add exclamation dummy
scoreboard objectives add soil_timer dummy
scoreboard objectives add transition dummy
scoreboard objectives add death deathCount
scoreboard objectives add item_time dummy
scoreboard objectives add tnt_timer dummy
scoreboard objectives add version trigger
scoreboard objectives add narrator dummy
scoreboard objectives add eyepiece dummy
scoreboard objectives add secrets dummy
scoreboard objectives add paused dummy
scoreboard objectives add deaths dummy
scoreboard objectives add motion dummy
scoreboard objectives add credit dummy
scoreboard objectives add bug trigger
scoreboard objectives add timer dummy
scoreboard objectives add hints dummy
scoreboard objectives add vault dummy
scoreboard objectives add crane dummy
scoreboard objectives add break dummy
scoreboard objectives add lever dummy
scoreboard objectives add intro dummy
scoreboard objectives add sneak dummy
scoreboard objectives add rp trigger
scoreboard objectives add end dummy
scoreboard objectives add xp dummy
# peak variable naming
scoreboard objectives add 4 dummy

# team thingies
team add map
team modify map collisionRule never
team modify map friendlyFire false
team modify map deathMessageVisibility never

# idk im too lazy
execute as @e[type=painting] run data merge entity @s {Invulnerable:1b}