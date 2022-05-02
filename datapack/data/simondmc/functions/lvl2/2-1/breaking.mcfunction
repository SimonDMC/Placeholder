# ticking function, controls breaking of the ground

# 1st break
execute as @a[tag=started] at @s if entity @s[x=12,dx=5,y=104,z=50,dz=2] if block ~ ~-5 ~ nether_quartz_ore run schedule function simondmc:lvl2/2-1/remove_barriers 12t
execute as @a[tag=started] at @s if entity @s[x=12,dx=5,y=104,z=50,dz=2] if block ~ ~-5 ~ nether_quartz_ore run function simondmc:lvl2/2-1/break
# this could be air but used an extra block for convenience of restoring
execute as @a[tag=started] at @s if entity @s[x=12,dx=5,y=104,z=50,dz=2] if block ~ ~-5 ~ nether_quartz_ore run fill 12 98 54 18 98 50 minecraft:nether_gold_ore replace minecraft:nether_quartz_ore