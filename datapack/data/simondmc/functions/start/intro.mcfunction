# ticking function, controls everything related to the map intro (animations, etc)

execute if score global intro matches 1.. run scoreboard players add global intro 1

# start spitting info if button not pressed
execute if score global intro matches 41 unless score pressed intro matches 1 run scoreboard players set t_info intro 1

# wall anim
execute if score global intro matches 41 run tag @a[tag=started] add ingame
execute if score global intro matches 41 run tag @a[tag=started] add lvl1
execute if score global intro matches 41 run fill 2 104 2 -2 101 -2 air replace chiseled_quartz_block
execute if score global intro matches 41 run summon falling_block 1 104 1 {BlockState:{Name:"minecraft:chiseled_quartz_block"},Time:1,Motion:[.4,.3,.2]}
execute if score global intro matches 41 run summon falling_block 1 104 0 {BlockState:{Name:"minecraft:chiseled_quartz_block"},Time:1,Motion:[.45,.3,.1]}
execute if score global intro matches 41 run summon falling_block 1 104 -1 {BlockState:{Name:"minecraft:chiseled_quartz_block"},Time:1,Motion:[.29,.3,-.2]}
execute if score global intro matches 41 run summon falling_block 0 104 -1 {BlockState:{Name:"minecraft:chiseled_quartz_block"},Time:1,Motion:[.1,.3,-.5]}
execute if score global intro matches 41 run summon falling_block -1 104 -1 {BlockState:{Name:"minecraft:chiseled_quartz_block"},Time:1,Motion:[-.22,.3,-.33]}
execute if score global intro matches 41 run summon falling_block -1 104 0 {BlockState:{Name:"minecraft:chiseled_quartz_block"},Time:1,Motion:[-.4,.3,.1]}
execute if score global intro matches 41 run summon falling_block -1 104 1 {BlockState:{Name:"minecraft:chiseled_quartz_block"},Time:1,Motion:[-.4,.3,.4]}
execute if score global intro matches 41 run summon falling_block 0 104 1 {BlockState:{Name:"minecraft:chiseled_quartz_block"},Time:1,Motion:[-.1,.3,.4]}
execute if score global intro matches 41 run summon falling_block 0 104 0 {BlockState:{Name:"minecraft:chiseled_quartz_block"},Time:1,Motion:[-.4,.3,-.1]}
execute if score global intro matches 41 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[359.7f,0f,0f]}}
execute if score global intro matches 42 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[358.9f,0f,0f]}}
execute if score global intro matches 43 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[357.9f,0f,0f]}}
execute if score global intro matches 44 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[356.4f,0f,0f]}}
execute if score global intro matches 45 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[354.6f,0f,0f]}}
execute if score global intro matches 46 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[352.4f,0f,0f]}}
execute if score global intro matches 47 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[349.7f,0f,0f]}}
execute if score global intro matches 48 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[346.6f,0f,0f]}}
execute if score global intro matches 49 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[343.1f,0f,0f]}}
execute if score global intro matches 50 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[339.1f,0f,0f]}}
execute if score global intro matches 51 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[331.3f,0f,0f]}}
execute if score global intro matches 52 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[322.7f,0f,0f]}}
execute if score global intro matches 53 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[313.3f,0f,0f]}}
execute if score global intro matches 54 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[302.9f,0f,0f]}}
execute if score global intro matches 55 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[291.7f,0f,0f]}}
execute if score global intro matches 56 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[279.5f,0f,0f]}}
execute if score global intro matches 57 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[266.2f,0f,0f]}}
execute if score global intro matches 58 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[251.9f,0f,0f]}}
execute if score global intro matches 59 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[236.5f,0f,0f]}}
execute if score global intro matches 60 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[219.8f,0f,0f]}}
execute if score global intro matches 61 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[201.8f,0f,0f]}}
execute if score global intro matches 62 as @e[tag=quartz] run data merge entity @s {Pose:{Head:[182.4f,0f,0f]}}
execute if score global intro matches 64 run scoreboard players set global grass_spread 1
# secret guide
execute if score global intro matches 124 run advancement grant @a[tag=started] only simondmc:util/guide
# advancement clear
execute if score global intro matches 125 run advancement revoke @a[tag=started] only simondmc:util/guide
execute if score global intro matches 125 run scoreboard players reset global intro