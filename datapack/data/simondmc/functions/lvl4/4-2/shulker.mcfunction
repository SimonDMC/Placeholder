# ticking function, controls the sus :flushed: shulker

# spawn
execute if block -1001 111 -999 shulker_box run summon shulker -1001 111 -999 {AttachFace:4b,Tags:["sus"],Invulnerable:1b}
execute if block -1001 111 -999 shulker_box run setblock -1001 111 -999 air

# stop shooting if high enough
execute unless entity @a[tag=started,predicate=simondmc:lvl4/shulker] run data merge entity @e[tag=sus,limit=1] {NoAI:1b,Silent:1b}
execute unless entity @a[tag=started,predicate=simondmc:lvl4/shulker] run kill @e[type=shulker_bullet]
execute as @a[tag=started] if predicate simondmc:lvl4/shulker run data merge entity @e[tag=sus,limit=1] {NoAI:0b,Silent:0b}

# clear levitation if high enough
execute unless score 3 4 matches 1 run effect clear @a[tag=started,x=-998,y=116,z=-999,dx=-9,dz=-9] levitation