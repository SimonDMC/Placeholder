# called by simondmc:lvl3/3-2/vault, activates after entering the vault code correctly

execute as @a[tag=started] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.7
gamerule doTileDrops false
fill 1086 104 1027 1087 101 1029 air destroy
kill @e[tag=left]
kill @e[tag=middle]
kill @e[tag=right]
kill @e[tag=leftM]
kill @e[tag=middleM]
kill @e[tag=rightM]
scoreboard players reset 1 vault
scoreboard players reset 2 vault
scoreboard players reset 3 vault
scoreboard players set done vault 1
function simondmc:end/end