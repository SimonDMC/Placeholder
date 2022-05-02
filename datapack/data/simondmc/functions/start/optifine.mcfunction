# called by simondmc:core/join, checks for optifine and tells player shaders break it

## ALL CREDITS FOR OPTIFINE DETECTION GO TO 5uso
##
## i take no credit for anything here
## https://github.com/5uso/Mod-Warnings
##
## i put credits at the end of the map but im not a lawyer, 
## if im breaking any copyright laws please let me know and 
## ill remove it or use the full pack, the main reason im 
## editing it and putting it into only one function is because
## its really the only thing i need from the pack and a quick
## glance at the license seems to suggest im allowed to do this
##
## pls no sue ¯\_(ツ)_/¯

summon area_effect_cloud 29999999 100 27115050 {UUID:[I;1347430161,0,131072,0],CustomName:'{"translate":"of.key.zoom"}'}
execute as 50502711-0000-0000-0002-000000000000 if entity @s[name=!"of.key.zoom"] run tellraw @a[tag=started] {"text":"\u2139 We've noticed you're using OptiFine. Please note shaders are not supported and may break the map.","color":"gold"}
execute as 50502711-0000-0000-0002-000000000000 if entity @s[name=!"of.key.zoom"] run scoreboard players set optifine intro 1
kill 50502711-0000-0000-0002-000000000000