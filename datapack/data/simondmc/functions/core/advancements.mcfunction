# ticking function, controls advancements cuz location checks dont work for some reason and im too lazy to look into it

advancement grant @a[tag=started,x=-14,y=100,z=14,dy=1] only simondmc:sewer
advancement grant @a[tag=started,x=37,y=102,z=34,dx=2,dy=2,dz=2] only simondmc:fragile
execute if entity @a[tag=started,x=37,y=102,z=34,dx=2,dy=2,dz=2] run setblock 38 106 30 minecraft:iron_trapdoor
execute if entity @a[tag=started,x=37,y=102,z=34,dx=2,dy=2,dz=2] run setblock 38 105 30 minecraft:ladder[facing=south]
execute as @a[tag=started,x=-1015,y=131,z=-981,dy=1] run scoreboard players set first secrets 1
# narrator line
execute as @a[tag=started,x=-1015,y=131,z=-981,dy=1] unless score proto secrets matches 1 run scoreboard players set id narrator 14
execute as @a[tag=started,x=-1015,y=131,z=-981,dy=1] run scoreboard players set proto secrets 1
advancement grant @a[tag=started,x=-1015,y=131,z=-981,dy=1] only simondmc:proto
# tip of the tower works with location idk

# armor animation
scoreboard players add armorAnim intro 1
execute if score armorAnim intro matches 89 run scoreboard players reset armorAnim intro

# helmet
execute if score armorAnim intro matches 4 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color7
execute if score armorAnim intro matches 8 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color6
execute if score armorAnim intro matches 12 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color5
execute if score armorAnim intro matches 16 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color4
execute if score armorAnim intro matches 20 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color3
execute if score armorAnim intro matches 24 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color2
execute if score armorAnim intro matches 28 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color1
execute if score armorAnim intro matches 32 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color2
execute if score armorAnim intro matches 36 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color3
execute if score armorAnim intro matches 40 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color4
execute if score armorAnim intro matches 44 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color5
execute if score armorAnim intro matches 48 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color6
execute if score armorAnim intro matches 52 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color7
execute if score armorAnim intro matches 56 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color8
execute if score armorAnim intro matches 60 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color9
execute if score armorAnim intro matches 64 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color10
execute if score armorAnim intro matches 68 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color11
execute if score armorAnim intro matches 72 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color12
execute if score armorAnim intro matches 76 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color11
execute if score armorAnim intro matches 80 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color10
execute if score armorAnim intro matches 84 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color9
execute if score armorAnim intro matches 88 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{Anim:1b}}]}] run item modify entity @s armor.head simondmc:color8

# chestplate
execute if score armorAnim intro matches 4 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color12
execute if score armorAnim intro matches 8 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color11
execute if score armorAnim intro matches 12 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color10
execute if score armorAnim intro matches 16 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color9
execute if score armorAnim intro matches 20 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color8
execute if score armorAnim intro matches 24 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color7
execute if score armorAnim intro matches 28 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color6
execute if score armorAnim intro matches 32 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color5
execute if score armorAnim intro matches 36 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color4
execute if score armorAnim intro matches 40 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color3
execute if score armorAnim intro matches 44 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color2
execute if score armorAnim intro matches 48 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color1
execute if score armorAnim intro matches 52 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color2
execute if score armorAnim intro matches 56 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color3
execute if score armorAnim intro matches 60 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color4
execute if score armorAnim intro matches 64 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color5
execute if score armorAnim intro matches 68 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color6
execute if score armorAnim intro matches 72 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color7
execute if score armorAnim intro matches 76 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color8
execute if score armorAnim intro matches 80 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color9
execute if score armorAnim intro matches 84 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color10
execute if score armorAnim intro matches 88 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b,tag:{Anim:1b}}]}] run item modify entity @s armor.chest simondmc:color11

# leggings
execute if score armorAnim intro matches 4 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color6
execute if score armorAnim intro matches 8 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color7
execute if score armorAnim intro matches 12 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color8
execute if score armorAnim intro matches 16 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color9
execute if score armorAnim intro matches 20 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color10
execute if score armorAnim intro matches 24 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color11
execute if score armorAnim intro matches 28 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color12
execute if score armorAnim intro matches 32 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color11
execute if score armorAnim intro matches 36 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color10
execute if score armorAnim intro matches 40 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color9
execute if score armorAnim intro matches 44 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color8
execute if score armorAnim intro matches 48 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color7
execute if score armorAnim intro matches 52 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color6
execute if score armorAnim intro matches 56 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color5
execute if score armorAnim intro matches 60 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color4
execute if score armorAnim intro matches 64 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color3
execute if score armorAnim intro matches 68 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color2
execute if score armorAnim intro matches 72 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color1
execute if score armorAnim intro matches 76 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color2
execute if score armorAnim intro matches 80 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color3
execute if score armorAnim intro matches 84 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color4
execute if score armorAnim intro matches 88 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b,tag:{Anim:1b}}]}] run item modify entity @s armor.legs simondmc:color5

# boots
execute if score armorAnim intro matches 4 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color1
execute if score armorAnim intro matches 8 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color2
execute if score armorAnim intro matches 12 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color3
execute if score armorAnim intro matches 16 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color4
execute if score armorAnim intro matches 20 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color5
execute if score armorAnim intro matches 24 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color6
execute if score armorAnim intro matches 28 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color7
execute if score armorAnim intro matches 32 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color8
execute if score armorAnim intro matches 36 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color9
execute if score armorAnim intro matches 40 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color10
execute if score armorAnim intro matches 44 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color11
execute if score armorAnim intro matches 48 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color12
execute if score armorAnim intro matches 52 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color11
execute if score armorAnim intro matches 56 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color10
execute if score armorAnim intro matches 60 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color9
execute if score armorAnim intro matches 64 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color8
execute if score armorAnim intro matches 68 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color7
execute if score armorAnim intro matches 72 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color6
execute if score armorAnim intro matches 76 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color5
execute if score armorAnim intro matches 80 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color4
execute if score armorAnim intro matches 84 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color3
execute if score armorAnim intro matches 88 as @a[tag=started,nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b,tag:{Anim:1b}}]}] run item modify entity @s armor.feet simondmc:color2