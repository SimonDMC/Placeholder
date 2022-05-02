# called by simondmc:lvl2/2-1/breaking, breaks the first ground over the first gap

fill 13 102 54 12 102 51 air destroy
fill 12 101 52 12 100 52 air destroy
fill 15 102 53 14 102 50 air destroy
fill 16 102 52 16 102 50 air destroy
fill 18 102 51 17 102 49 air destroy
fill 18 100 50 18 101 50 air destroy
playsound entity.turtle.egg_break master @a 15 102 52
# narrator line
scoreboard players set id narrator 5