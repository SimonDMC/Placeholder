# called by simondmc:lvl4/4-6/laser, evaluates whether the first micro-level is finished or not and moves onto the next one if so

execute unless block -999 132 -1010 air as @a at @s run playsound entity.experience_orb.pickup master @s
execute unless block -999 132 -1010 air run clear @a end_rod
execute unless block -999 132 -1010 air run kill @e[type=item,nbt={Item:{id:"minecraft:end_rod"}}]
fill -997 132 -1004 -1001 132 -1010 air replace end_rod
gamerule doTileDrops false
fill -999 132 -1010 -999 133 -1011 air destroy
gamerule doTileDrops true
kill @e[tag=laser1]