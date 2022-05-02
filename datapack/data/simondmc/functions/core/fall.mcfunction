# ticking function, prevents the player from falling off

# set up entity to tp to
execute as @a[tag=started,tag=p1] at @s unless block ~ ~-.1 ~ air run tp @e[tag=p1fall] @s
execute as @a[tag=started,tag=p2] at @s unless block ~ ~-.1 ~ air run tp @e[tag=p2fall] @s
execute as @a[tag=started,tag=p3] at @s unless block ~ ~-.1 ~ air run tp @e[tag=p3fall] @s
execute as @a[tag=started,tag=p4] at @s unless block ~ ~-.1 ~ air run tp @e[tag=p4fall] @s
execute as @a[tag=started,tag=p5] at @s unless block ~ ~-.1 ~ air run tp @e[tag=p5fall] @s
execute as @a[tag=started,tag=p6] at @s unless block ~ ~-.1 ~ air run tp @e[tag=p6fall] @s

# tp after fall
execute as @a[tag=started] if predicate simondmc:fall run scoreboard players add @s s_death 1
execute as @a[tag=started] if predicate simondmc:fall run effect give @s resistance 1 4 true
execute as @a[tag=started] if predicate simondmc:fall run tag @s add playsound
execute as @a[tag=started,tag=p1] if predicate simondmc:fall at @e[tag=p1fall,limit=1] run particle minecraft:totem_of_undying ~ ~1 ~ .5 1 .5 .05 200
execute as @a[tag=started,tag=p2] if predicate simondmc:fall at @e[tag=p2fall,limit=1] run particle minecraft:totem_of_undying ~ ~1 ~ .5 1 .5 .05 200
execute as @a[tag=started,tag=p3] if predicate simondmc:fall at @e[tag=p3fall,limit=1] run particle minecraft:totem_of_undying ~ ~1 ~ .5 1 .5 .05 200
execute as @a[tag=started,tag=p4] if predicate simondmc:fall at @e[tag=p4fall,limit=1] run particle minecraft:totem_of_undying ~ ~1 ~ .5 1 .5 .05 200
execute as @a[tag=started,tag=p5] if predicate simondmc:fall at @e[tag=p5fall,limit=1] run particle minecraft:totem_of_undying ~ ~1 ~ .5 1 .5 .05 200
execute as @a[tag=started,tag=p6] if predicate simondmc:fall at @e[tag=p6fall,limit=1] run particle minecraft:totem_of_undying ~ ~1 ~ .5 1 .5 .05 200
execute as @a[tag=started,tag=p1] if predicate simondmc:fall run tp @s @e[tag=p1fall,limit=1]
execute as @a[tag=started,tag=p2] if predicate simondmc:fall run tp @s @e[tag=p2fall,limit=1]
execute as @a[tag=started,tag=p3] if predicate simondmc:fall run tp @s @e[tag=p3fall,limit=1]
execute as @a[tag=started,tag=p4] if predicate simondmc:fall run tp @s @e[tag=p4fall,limit=1]
execute as @a[tag=started,tag=p5] if predicate simondmc:fall run tp @s @e[tag=p5fall,limit=1]
execute as @a[tag=started,tag=p6] if predicate simondmc:fall run tp @s @e[tag=p6fall,limit=1]

# tp after death
execute as @a[tag=started,tag=p1] if score @s death matches 1 if predicate simondmc:fall run tp @s @e[tag=p1fall,limit=1]
execute as @a[tag=started,tag=p2] if score @s death matches 1 if predicate simondmc:fall run tp @s @e[tag=p2fall,limit=1]
execute as @a[tag=started,tag=p3] if score @s death matches 1 if predicate simondmc:fall run tp @s @e[tag=p3fall,limit=1]
execute as @a[tag=started,tag=p4] if score @s death matches 1 if predicate simondmc:fall run tp @s @e[tag=p4fall,limit=1]
execute as @a[tag=started,tag=p5] if score @s death matches 1 if predicate simondmc:fall run tp @s @e[tag=p5fall,limit=1]
execute as @a[tag=started,tag=p6] if score @s death matches 1 if predicate simondmc:fall run tp @s @e[tag=p6fall,limit=1]

# play sound
execute as @a[tag=started,tag=playsound] at @s run playsound minecraft:item.totem.use master @s
execute as @a[tag=started,tag=playsound] run tag @s remove playsound

# entities overboard
execute as @e[type=!player,type=!end_crystal] if predicate simondmc:fall at @s run tp @s @p
# end crystals are stupid and dumb and keep teleporting to me even tho i literally didnt spawn a single crystal the entire time while making this map please someone tell me why end crystals are teleporting to me i swear i am going insane