# called by every event that modifies hints, reloads hints

kill @e[tag=glower]
execute if entity @a[tag=ingame,tag=lvl1] run function simondmc:core/hint/lvl1
execute if entity @a[tag=ingame,tag=lvl2] run function simondmc:core/hint/lvl2
execute if entity @a[tag=ingame,tag=lvl3] run function simondmc:core/hint/lvl3
execute if entity @a[tag=ingame,tag=lvl4] run function simondmc:core/hint/lvl4