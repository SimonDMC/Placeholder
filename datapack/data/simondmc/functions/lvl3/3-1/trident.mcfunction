# ticking function, TRIDENT WOOOOOO BABY

# check for all prongs in inventory (narrator line)
execute unless score all_prongs trident matches 1 as @a[tag=started,nbt={Inventory:[{tag:{prong:1}},{tag:{prong:2}},{tag:{prong:3}}]}] run scoreboard players set id narrator 18
execute unless score all_prongs trident matches 1 as @a[tag=started,nbt={Inventory:[{tag:{prong:1}},{tag:{prong:2}},{tag:{prong:3}}]}] run scoreboard players set all_prongs trident 1

# crafting
execute as @a[tag=started] if score @s trident matches 1 run clear @s trident
execute as @a[tag=started] if score @s trident matches 1 run give @s trident{HideFlags:4,Unbreakable:1b}
execute as @a[tag=started] if score @s trident matches 1 run scoreboard players reset @s trident

# throw prevent
execute at @e[type=trident] run give @p trident{HideFlags:4,Unbreakable:1b}
kill @e[type=trident]

# tp all when one crosses
execute as @a[tag=started] if predicate simondmc:lvl3/3-2 at @s if block ~ ~-.1 ~ grass_block unless score tp trident matches 1 if score global multiplayer matches 2.. run tp @a[tag=started] @s
# narrator line
execute as @a[tag=started] if predicate simondmc:lvl3/3-2 at @s if block ~ ~-.1 ~ grass_block unless score tp trident matches 1 run scoreboard players set id narrator 19
# refresh hint system
execute as @a[tag=started] if predicate simondmc:lvl3/3-2 at @s if block ~ ~-.1 ~ grass_block unless score tp trident matches 1 if score global hint matches 1 run function simondmc:core/hint/refresh_hint
execute as @a[tag=started] if predicate simondmc:lvl3/3-2 at @s if block ~ ~-.1 ~ grass_block unless score tp trident matches 1 run scoreboard players set tp trident 1