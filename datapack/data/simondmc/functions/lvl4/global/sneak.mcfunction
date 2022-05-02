# ticking function, handles the sneak system :(((

## please please please dont touch this unless it breaks it is absolute garbage and spaghetti but it works so
## unless its like FATAL do not edit this

execute as @a[tag=started,nbt={SelectedItem:{tag:{Sneak:1b}}}] unless score @s sneak matches 1 run scoreboard players set temp sneak 1
execute unless entity @a[tag=started,nbt={SelectedItem:{tag:{Sneak:1b}}}] run kill @e[tag=shulkstand]
execute unless entity @a[tag=started,nbt={SelectedItem:{tag:{Sneak:1b}}}] run tp @e[tag=crawlshulk] -1000 95 -1000
execute unless entity @a[tag=started,nbt={SelectedItem:{tag:{Sneak:1b}}}] run kill @e[tag=crawlshulk]
execute as @a[tag=started,nbt=!{SelectedItem:{tag:{Sneak:1b}}}] run scoreboard players reset @s sneak

execute as @a[tag=started,nbt={SelectedItem:{tag:{Sneak:1b}}}] if score temp sneak matches 1 at @s run summon armor_stand ~ ~1 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["shulkstand"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,AttachFace:0b,Color:6b,Tags:["crawlshulk"]}]}
execute as @a[tag=started,nbt={SelectedItem:{tag:{Sneak:1b}}}] if score temp sneak matches 1 run scoreboard players set @s sneak 1
scoreboard players reset temp sneak

execute as @a[tag=started] if score @s sneak matches 1 at @s run tp @e[tag=shulkstand] ~ ~1 ~