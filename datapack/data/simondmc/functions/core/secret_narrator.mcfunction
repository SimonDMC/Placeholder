# called by secret advancements, increases the secret score and plays secret line

scoreboard players add @s secrets 1
execute unless score first secrets matches 1 run scoreboard players set id narrator 23
scoreboard players set first secrets 1