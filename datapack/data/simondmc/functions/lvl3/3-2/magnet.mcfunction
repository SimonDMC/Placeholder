# ticking function, controls the magnetic helmet or whatever its called + feather

# magnetism
execute as @a[nbt={Inventory:[{id:"minecraft:iron_helmet",Slot:103b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:1s}]}}]}] at @s if block ~ ~2.5 ~ iron_block run effect give @s levitation 1 3 true
execute as @a[nbt={Inventory:[{id:"minecraft:iron_helmet",Slot:103b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:1s}]}}]}] at @s unless block ~ ~2.5 ~ iron_block run effect clear @s levitation
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:iron_helmet",Slot:103b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:1s}]}}]}] run effect clear @s levitation

# feather
execute as @a[nbt={SelectedItem:{tag:{SlowFall:1b}}}] run effect give @s slow_falling 1 0 true
execute as @a[nbt=!{SelectedItem:{tag:{SlowFall:1b}}}] run effect clear @s slow_falling

# eyepiece pickup check
execute as @a[nbt={Inventory:[{id:"minecraft:iron_helmet",Slot:103b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:1s}]}}]}] run scoreboard players set helmet eyepiece 1

# barriers
execute if block 1019 98 1029 iron_block run fill 1020 98 1029 1025 98 1029 barrier