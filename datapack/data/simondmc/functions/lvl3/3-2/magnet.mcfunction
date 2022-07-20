# ticking function, controls the magnetic helmet or whatever its called + feather

# replace any enchantment with correct one
execute as @a[nbt={Inventory:[{id:"minecraft:iron_helmet",tag:{Enchantments:[{}]}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:iron_helmet",tag:{RealHelmet:1b}}]}] run scoreboard players set temp_helmet eyepiece 1
execute if score temp_helmet eyepiece matches 1 run clear @a iron_helmet
execute if score temp_helmet eyepiece matches 1 positioned 1018 90 1022 run give @p iron_helmet{RealHelmet:1b,Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:1s}]} 1
execute if score temp_helmet eyepiece matches 1 run scoreboard players set temp_helmet eyepiece 0

# magnetism
execute as @a[tag=started,nbt={Inventory:[{id:"minecraft:iron_helmet",Slot:103b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:1s}]}}]}] at @s if block ~ ~2.5 ~ iron_block run effect give @s levitation 1 3 true
execute as @a[tag=started,nbt={Inventory:[{id:"minecraft:iron_helmet",Slot:103b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:1s}]}}]}] at @s unless block ~ ~2.5 ~ iron_block run effect clear @s levitation
execute as @a[tag=started] unless entity @s[nbt={Inventory:[{id:"minecraft:iron_helmet",Slot:103b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:1s}]}}]}] run effect clear @s levitation

# feather
execute as @a[tag=started,nbt={SelectedItem:{tag:{SlowFall:1b}}}] run effect give @s slow_falling 1 0 true
execute as @a[tag=started,nbt=!{SelectedItem:{tag:{SlowFall:1b}}}] run effect clear @s slow_falling

# eyepiece pickup check
execute as @a[tag=started,nbt={Inventory:[{id:"minecraft:iron_helmet",Slot:103b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:1s}]}}]}] run scoreboard players set helmet eyepiece 1

# barriers
execute if block 1019 98 1029 iron_block run fill 1020 98 1029 1025 98 1029 barrier