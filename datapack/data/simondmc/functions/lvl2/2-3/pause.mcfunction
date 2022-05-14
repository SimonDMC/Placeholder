# ticking function, controls the pausing mechanic

execute as @a[tag=started] if score @s carrot_on_a_stick matches 1 unless score global paused matches 1 run function simondmc:lvl2/2-3/pause_on
execute as @a[tag=started] if score @s carrot_on_a_stick matches 1 if score global paused matches 1 run function simondmc:lvl2/2-3/pause_off

# gives it back after losing it to crafting
execute as @a[tag=started] if predicate simondmc:lvl2/give_pause unless score given paused matches 1 run give @s carrot_on_a_stick{display:{Name:'{"text":"Pause","color":"gray","italic":false}',Lore:['{"text":"Right click to pause ","color":"dark_gray","italic":false}','{"text":"all entities & movement.","color":"dark_gray","italic":false}']}}
# narrator line
execute as @a[tag=started] if predicate simondmc:lvl2/give_pause unless score given paused matches 1 run scoreboard players set id narrator 7
# refresh hint system
execute as @a[tag=started] if predicate simondmc:lvl2/give_pause unless score given paused matches 1 if score global hint matches 1 run function simondmc:core/hint/refresh_hint
execute as @a[tag=started] if predicate simondmc:lvl2/give_pause unless score given paused matches 1 run scoreboard players set given paused 1