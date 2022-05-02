# ticking function, controls the exclamation mark

scoreboard players set CONST exclamation 2

scoreboard players add old exclamation 1
execute if score old exclamation matches 81 run scoreboard players set old exclamation 1
execute store result score y exclamation run scoreboard players get old exclamation
scoreboard players operation y exclamation /= CONST exclamation

execute if score y exclamation matches 1 at @s run tp @s ~ ~0.00575 ~
execute if score y exclamation matches 2 at @s run tp @s ~ ~0.01150 ~
execute if score y exclamation matches 3 at @s run tp @s ~ ~0.01725 ~
execute if score y exclamation matches 4 at @s run tp @s ~ ~0.023 ~
execute if score y exclamation matches 5..15 at @s run tp @s ~ ~0.035 ~
execute if score y exclamation matches 16 at @s run tp @s ~ ~0.023 ~
execute if score y exclamation matches 17 at @s run tp @s ~ ~0.01725 ~
execute if score y exclamation matches 18 at @s run tp @s ~ ~0.01150 ~
execute if score y exclamation matches 19 at @s run tp @s ~ ~0.00575 ~

execute if score y exclamation matches 21 at @s run tp @s ~ ~-0.00575 ~
execute if score y exclamation matches 22 at @s run tp @s ~ ~-0.01150 ~
execute if score y exclamation matches 23 at @s run tp @s ~ ~-0.01725 ~
execute if score y exclamation matches 24 at @s run tp @s ~ ~-0.023 ~
execute if score y exclamation matches 25..35 at @s run tp @s ~ ~-0.035 ~
execute if score y exclamation matches 36 at @s run tp @s ~ ~-0.023 ~
execute if score y exclamation matches 37 at @s run tp @s ~ ~-0.01725 ~
execute if score y exclamation matches 38 at @s run tp @s ~ ~-0.01150 ~
execute if score y exclamation matches 39 at @s run tp @s ~ ~-0.00575 ~

# force entity to visually update position
execute store result entity @s Air short 1 run time query gametime

# kill exclamation mark when player gets close
execute if entity @a[tag=started,x=1.5,y=100,z=31.5,distance=..2] run kill @s