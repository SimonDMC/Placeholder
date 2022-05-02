# ticking function, does eyepiece block stuff

# pickup check
execute if block 1017 98 1029 iron_block if score helmet eyepiece matches 1 as @a[tag=started,nbt={SelectedItem:{tag:{SlowFall:1b}}}] as @a[tag=started,x=1013,y=95,z=1029,dz=1] run data merge entity @e[tag=eyepiece,limit=1] {PickupDelay:0}
execute unless block 1017 98 1029 iron_block run data merge entity @e[tag=eyepiece,limit=1] {PickupDelay:1000}
execute unless score helmet eyepiece matches 1 run data merge entity @e[tag=eyepiece,limit=1] {PickupDelay:1000}
execute unless entity @a[tag=started,x=1013,y=95,z=1029,dz=1] run data merge entity @e[tag=eyepiece,limit=1] {PickupDelay:1000}
execute unless entity @a[tag=started,nbt={SelectedItem:{tag:{SlowFall:1b}}}] run data merge entity @e[tag=eyepiece,limit=1] {PickupDelay:1000}

# on pickup (narrator line)
execute unless score picked_up eyepiece matches 1 if entity @a[tag=started,nbt={Inventory:[{tag:{Eyepiece:1b}}]}] run scoreboard players set id narrator 21
execute unless score picked_up eyepiece matches 1 if entity @a[tag=started,nbt={Inventory:[{tag:{Eyepiece:1b}}]}] run scoreboard players set picked_up eyepiece 1

# activate on/off
execute as @a[tag=started,nbt={SelectedItem:{tag:{Eyepiece:1b}}}] unless score on eyepiece matches 1 run function simondmc:lvl3/3-2/eyepiece_on
execute unless entity @a[tag=started,nbt={SelectedItem:{tag:{Eyepiece:1b}}}] if score on eyepiece matches 1 run function simondmc:lvl3/3-2/eyepiece_off