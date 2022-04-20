# ticking function, makes the giant enchanting bottle work

# store xp points in scoreboard
execute as @a store result score @s xp run data get entity @s XpP 100

# hacky way of once setting the player to 7 levels
execute as @a[level=1] run scoreboard players set temp xp 1
execute as @a[level=1] unless score global xp matches 1 run xp set @s 3 points
execute as @a[level=1] unless score global xp matches 1 run xp set @s 5 levels
execute as @a if score @s xp matches 1.. run scoreboard players set temp xp 1
execute as @a if score @s xp matches 1.. unless score global xp matches 1 run xp set @s 5 levels
execute as @a if score @s xp matches 1.. unless score global xp matches 1 run xp set @s 9 points
execute if score temp xp matches 1 run kill @e[type=experience_orb]
execute if score temp xp matches 1 run scoreboard players set global xp 1

# explanation for if i ever revisit this code
# 
# if condition A and condition B -> condition A = false and condition B = false
# 
# this doesnt work without using a seperate function cuz the A&B check would fail once you alter one of them so it wont get to the second one
# 
# the solution i found is to use a temp condition as such
# 
# if condition A and condition B -> condition C = true
# if condition C -> condition A = false
# if condition C -> condition B = false
# 
# this is modified a bit to fit this scenario but in general that should work in most cases
# 
# conclusion: this is stupid but it works in an extremely specific scenario