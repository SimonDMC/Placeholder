# called by simondmc:lvl3/3-2/vault_complete, ends the whole map ayooooo

#################
#               #
#  TRANSPOSAL:  #
#               #
#    X+1065     #
#    Y+60       #
#    Z+1007     #
#               #
#################

# clone end
clone 17 38 12 37 48 30 1082 98 1019

# move over all entities from clone
execute as @e[x=17,y=38,z=12,dx=20,dy=10,dz=18] at @s run tp @s ~1065 ~60 ~1007

# nametag visibility
execute as @e[tag=end] run data merge entity @s {CustomNameVisible:1b}

# mark as complete
scoreboard players set global end 1

# clear everything except secret armor
clear @a[tag=started] bubble_coral
clear @a[tag=started] iron_helmet
clear @a[tag=started] feather
clear @a[tag=started] iron_hoe
clear @a[tag=started] diamond_axe
clear @a[tag=started] trident
clear @a[tag=started] moss_block

# title and sound
execute as @a at @s run playsound ui.toast.challenge_complete master @s
title @a times 20 100 20
title @a title {"text":"Placeholder","color":"#B79312"}
title @a subtitle {"text":"Thanks for playing.","color":"gray"}

# more config stuff
tag @a[tag=started] remove lvl3
tag @a[tag=started] remove ingame
clear @a[tag=started] gray_candle
clear @a[tag=started] lime_candle
scoreboard players reset global hint
kill @e[tag=glower]

# tp everyone to person who went in
execute if score global multiplayer matches 2.. run tp @a[tag=started] @s

# clear eyepiece slowness
effect clear @a slowness