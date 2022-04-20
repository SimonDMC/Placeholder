# ticking function, controls holograms

# dynamic name visibility system
execute as @e[tag=text] at @s if entity @a[distance=..3] run data merge entity @s {CustomNameVisible:1b}
execute as @e[tag=text] at @s unless entity @a[distance=..3] run data merge entity @s {CustomNameVisible:0b}
execute as @e[type=area_effect_cloud] run data merge entity @s {Duration:2147483647}

# text summoning
#execute unless entity @e[tag=text,x=54,y=112,z=46,distance=..1] run summon area_effect_cloud 54.5 112.2 46.2 {Duration:10,Tags:["text"],CustomName:'{"text":"Door Override"}'}
#execute unless entity @e[tag=text,x=9.8,y=101,z=22,distance=..1] run summon area_effect_cloud 9.8 101.5 22.0 {Duration:10,Tags:["text"],CustomName:'{"text":"Input Fuel"}'}

# display pearl summoning
#execute unless entity @e[tag=display,x=9.5,y=102.2,z=22.2,distance=..1] run summon ender_pearl 9.5 102.2 22.2 {NoGravity:1b,Tags:["display"],Item:{id:"minecraft:charcoal",Count:1b}}

# idk it was all causing problems hopefully it works