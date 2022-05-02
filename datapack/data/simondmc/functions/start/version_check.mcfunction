# called by simondmc:core/join, checks for minecraft version and sends a big warning if you can't follow instruction

execute store result score version intro run data get entity @r DataVersion

## CHANGE THIS IF MC VERSION UPDATE

execute unless score version intro matches 2975 run tellraw @a ["",{"text":"-----------------------------------------","bold":true,"strikethrough":true,"color":"red"},{"text":"\n"},{"text":"WARNING: You are playing in the wrong Minecraft version.\nThe map may not work as intended.\nPlease reinstall the map and play with version ","bold":true,"color":"red"},{"text":"1.18.2","bold":true,"color":"green"},{"text":"\n"},{"text":"-----------------------------------------","bold":true,"strikethrough":true,"color":"red"}]