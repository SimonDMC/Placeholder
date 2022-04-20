# ticking function, handles the narrator system

##################################
# narrator.on_start = 1          #*
# narrator.in_gap = 2            #*
# narrator.first_fuel = 3        #*
#                                #
# narrator.lvl2_begin = 4        #*
# narrator.bridge_break = 5      #*
# narrator.powder_craft = 6      #*
# narrator.give_back_pause = 7   #*
# narrator.door_override = 27    #*
# narrator.lever_lock = 8        #*
# narrator.complete_lvl2 = 9     #*
#                                #
# narrator.elevator_die = 10     #*
# narrator.place_shulker = 11    #*
# narrator.prototype_enter = 12  #*
# narrator.double_prototype = 13 #*
# narrator.triple_prototype = 14 #*
# narrator.complete_lvl4 = 15    #*
#                                #
# narrator.portal_corrupt = 16   #*
# narrator.dumb_hole = 17        #*
# narrator.all_prongs = 18       #*
# narrator.enter_3_2 = 19        #*
# narrator.enter_tree = 20       #*
# narrator.eyepiece_get = 21     #*
#                                #
# narrator.test_audio = 22       # --handled seperately, ID unused
# narrator.first_secret = 23     #*
# narrator.short_hint = 24       #*
# narrator.long_hint = 25        #*
# narrator.epilogue = 26         #* SCRAPPED
##################################

execute if score id narrator matches 1.. run stopsound @a voice

execute if score id narrator matches 1 run scoreboard players set 1 narrator 1
execute if score 1 narrator matches 1.. run scoreboard players add 1 narrator 1
execute if score 1 narrator matches 2 as @a at @s run playsound narrator.on_start voice @s ~ ~ ~
execute if score 1 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Hey, welcome to our-","color":"gray"}]
execute if score 1 narrator matches 46 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Hold on, what are you doing here? You're not supposed to be… listen… give me two more weeks and the map will be ready.","color":"gray"}]
execute if score 1 narrator matches 231 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"No? It's not done yet though… I mean half the mechanics don't work, we haven't even started the story and- alright, whatever.","color":"gray"}]
execute if score 1 narrator matches 423 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"I'll let you explore but don't fiddle with anything.","color":"gray"}]
execute if score 1 narrator matches 495 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"So then, welcome to... uhhh we haven't actually decided on a name yet.","color":"gray"}]
execute if score 1 narrator matches 551 run title @a times 20 40 20
execute if score 1 narrator matches 551 run title @a title "ሱሲሳሴስሶሷሸ"
execute if score 1 narrator matches 611 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Anyway, I was playing around with the idea of these walls exploding so I might as well show you. Let me know if you think it's cool.","color":"gray"}]
# animation has 40 ticks delay
execute if score 1 narrator matches 701 run scoreboard players set global intro 1
execute if score 1 narrator matches 701 run scoreboard players reset 1 narrator

execute if score id narrator matches 2 run scoreboard players set 2 narrator 1
execute if score 2 narrator matches 1.. run scoreboard players add 2 narrator 1
execute if score 2 narrator matches 2 as @a at @s run playsound narrator.in_gap voice @s ~ ~ ~
execute if score 2 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Ah right, forgot to tell you about the construction work, there is a big hole in the middle of the level. But it seems you've figured that out.","color":"gray"}]
execute if score 2 narrator matches 2 run scoreboard players reset 2 narrator

execute if score id narrator matches 3 run scoreboard players set 3 narrator 1
execute if score 3 narrator matches 1.. run scoreboard players add 3 narrator 1
execute if score 3 narrator matches 2 as @a at @s run playsound narrator.first_fuel voice @s ~ ~ ~
execute if score 3 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Hey, I told you not to touch anything. I really don't think you're supposed to mess with that.","color":"gray"}]
execute if score 3 narrator matches 87 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Also, unrelated, but why does it use fuel to lower? That's like… §ophysically inexplicable…","color":"gray"}]
execute if score 3 narrator matches 87 run scoreboard players reset 3 narrator

execute if score id narrator matches 4 run scoreboard players set 4 narrator 1
execute if score 4 narrator matches 1.. run scoreboard players add 4 narrator 1
execute if score 4 narrator matches 2 as @a at @s run playsound narrator.lvl2_begin voice @s ~ ~ ~
execute if score 4 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"That's- mmm yep, sure! Good job! Good... job. Anyway.","color":"gray"}]
execute if score 4 narrator matches 144 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"For this next level, the devs have been experimenting with a pause mechanic so I'll let you play around with that.","color":"gray"}]
execute if score 4 narrator matches 144 run scoreboard players reset 4 narrator

execute if score id narrator matches 5 run scoreboard players set 5 narrator 1
execute if score 5 narrator matches 1.. run scoreboard players add 5 narrator 1
execute if score 5 narrator matches 2 as @a at @s run playsound narrator.bridge_break voice @s ~ ~ ~
execute if score 5 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Ah god, I'm gonna have to send for construction again. I've needed them so often they've started charging me one for the price of two.","color":"gray"}]
execute if score 5 narrator matches 2 run scoreboard players reset 5 narrator

execute if score id narrator matches 6 run scoreboard players set 6 narrator 1
execute if score 6 narrator matches 1.. run scoreboard players add 6 narrator 1
execute if score 6 narrator matches 2 as @a at @s run playsound narrator.powder_craft voice @s ~ ~ ~
execute if score 6 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"That is not funny. I give you access to this revolutionary mechanic and you just waste it? Sure. Yeah. Works with me, I guess.","color":"gray"}]
execute if score 6 narrator matches 2 run scoreboard players reset 6 narrator

execute if score id narrator matches 7 run scoreboard players set 7 narrator 1
execute if score 7 narrator matches 1.. run scoreboard players add 7 narrator 1
execute if score 7 narrator matches 2 as @a at @s run playsound narrator.give_back_pause voice @s ~ ~ ~
execute if score 7 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Yeah great job and all, but I don't understand how you're so comfortable without the pause button, like what if something's about to explode?","color":"gray"}]
execute if score 7 narrator matches 2 run scoreboard players reset 7 narrator

execute if score id narrator matches 27 run scoreboard players set 27 narrator 1
execute if score 27 narrator matches 1.. run scoreboard players add 27 narrator 1
execute if score 27 narrator matches 2 as @a at @s run playsound narrator.door_override voice @s ~ ~ ~
execute if score 27 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Y'know, they used to have monitors around here. But with the new policy of §o\"paying tax\" §7they removed them all.","color":"gray"}]
execute if score 27 narrator matches 137 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"All that's left is my voice...","color":"gray"}]
execute if score 27 narrator matches 137 run scoreboard players reset 27 narrator

execute if score id narrator matches 8 run scoreboard players set 8 narrator 1
execute if score 8 narrator matches 1.. run scoreboard players add 8 narrator 1
execute if score 8 narrator matches 2 as @a at @s run playsound narrator.lever_lock voice @s ~ ~ ~
execute if score 8 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Here's the thing. It would have taken us mere minutes to provide a patch for this softlock. We could have just placed a lever on the wall! Or a clickable message in chat! Or even just a second tunnel!","color":"gray"}]
execute if score 8 narrator matches 231 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"But no, no, no, no, no. We have instead spent our time carefully crafting the perfect message to encapsulate our pure anger and hatred for you.","color":"gray"}]
execute if score 8 narrator matches 422 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"All of this purely because you wanted to challenge that message at the very beginning - to find a softlock. But you didn't find a softlock - you failed. ","color":"gray"}]
execute if score 8 narrator matches 628 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"There is a way out. And if you think for a second I'm going to tell you what it is, you have underestimated everything I stand for. You did this to yourself. Was it worth it?","color":"gray"}]
execute if score 8 narrator matches 628 run scoreboard players reset 8 narrator

execute if score id narrator matches 9 run scoreboard players set 9 narrator 1
execute if score 9 narrator matches 1.. run scoreboard players add 9 narrator 1
execute if score 9 narrator matches 2 as @a at @s run playsound narrator.complete_lvl2 voice @s ~ ~ ~
execute if score 9 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Uh, good job? This third level used to be a hotel. Just keep in mind the elevator doesn't work.","color":"gray"}]
execute if score 9 narrator matches 2 run scoreboard players reset 9 narrator

execute if score id narrator matches 10 run scoreboard players set 10 narrator 1
execute if score 10 narrator matches 1.. run scoreboard players add 10 narrator 1
execute if score 10 narrator matches 2 as @a at @s run playsound narrator.elevator_die voice @s ~ ~ ~
execute if score 10 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"And yet you still go and you still try it. §oThis is why I have trust issues.","color":"gray"}]
execute if score 10 narrator matches 2 run scoreboard players reset 10 narrator

execute if score id narrator matches 11 run scoreboard players set 11 narrator 1
execute if score 11 narrator matches 1.. run scoreboard players add 11 narrator 1
execute if score 11 narrator matches 2 as @a at @s run playsound narrator.place_shulker voice @s ~ ~ ~
execute if score 11 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"I gotta say you're doing really well! I just checked the spreadsheet and you're in the top 99.9% of players!","color":"gray"}]
execute if score 11 narrator matches 160 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Apparently you are the single most... patient player we've ever had!","color":"gray"}]
execute if score 11 narrator matches 160 run scoreboard players reset 11 narrator

execute if score id narrator matches 12 run scoreboard players set 12 narrator 1
execute if score 12 narrator matches 1.. run scoreboard players add 12 narrator 1
execute if score 12 narrator matches 2 as @a at @s run playsound narrator.prototype_enter voice @s ~ ~ ~
execute if score 12 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Ah, welcome to the prototype of our map! This was our original planning for the builds, there's build one, over there is build two and at the back is the build you're in right now!","color":"gray"}]
execute if score 12 narrator matches 2 run scoreboard players reset 12 narrator

execute if score id narrator matches 13 run scoreboard players set 13 narrator 1
execute if score 13 narrator matches 1.. run scoreboard players add 13 narrator 1
execute if score 13 narrator matches 2 as @a at @s run playsound narrator.double_prototype voice @s ~ ~ ~
execute if score 13 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Ah, welcome to the prototype of the prototype of our map! This was our original planning, for the planning of the builds.","color":"gray"}]
execute if score 13 narrator matches 202 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"You see you entered the prototype level within the protot- §oI don't get paid enough for this.","color":"gray"}]
execute if score 13 narrator matches 202 run scoreboard players reset 13 narrator

execute if score id narrator matches 14 run scoreboard players set 14 narrator 1
execute if score 14 narrator matches 1.. run scoreboard players add 14 narrator 1
execute if score 14 narrator matches 2 as @a at @s run playsound narrator.triple_prototype voice @s ~ ~ ~
execute if score 14 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Ah, welcome to the prototype, of the prototype, of the prototype of our map!","color":"gray"}]
execute if score 14 narrator matches 114 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"This was our original planning, for the planning, of the planning, of the builds.","color":"gray"}]
execute if score 14 narrator matches 232 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"You see, you entered the prototype level within the prototype level within the prototype level.","color":"gray"}]
execute if score 14 narrator matches 232 run scoreboard players reset 14 narrator

execute if score id narrator matches 15 run scoreboard players set 15 narrator 1
execute if score 15 narrator matches 1.. run scoreboard players add 15 narrator 1
execute if score 15 narrator matches 2 as @a at @s run playsound narrator.complete_lvl4 voice @s ~ ~ ~
execute if score 15 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Okay, you're really getting on my nerves now. You mess up all those hotel rooms just to return to the yellow one? That is a completely avoidable expense and GUESS WHO GETS YELLED AT? NOT YOU! I mean- guess who gets yelled at?","color":"gray"}]
execute if score 15 narrator matches 2 run scoreboard players reset 15 narrator

execute if score id narrator matches 16 run scoreboard players set 16 narrator 1
execute if score 16 narrator matches 1.. run scoreboard players add 16 narrator 1
execute if score 16 narrator matches 2 as @a at @s run playsound narrator.portal_corrupt voice @s ~ ~ ~
execute if score 16 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"What I was §otrying §7to tell you was that the build team really messed up the worldedit on this one. Anyway, your goal here is to make a trident.","color":"gray"}]
execute if score 16 narrator matches 126 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"I would appreciate it if you did it without completely destroying the mansion, §obut I doubt that's gonna happen.","color":"gray"}]
execute if score 16 narrator matches 126 run scoreboard players reset 16 narrator

execute if score id narrator matches 17 run scoreboard players set 17 narrator 1
execute if score 17 narrator matches 1.. run scoreboard players add 17 narrator 1
execute if score 17 narrator matches 2 as @a at @s run playsound narrator.dumb_hole voice @s ~ ~ ~
execute if score 17 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Oh, you're expecting a prize? Sur-prise! You're stuck! You fell for this trap and now you have two options.","color":"gray"}]
execute if score 17 narrator matches 143 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Either you accept your fate and quit, never to return again, or you cheat and switch gamemodes. The choice is yours.","color":"gray"}]
execute if score 17 narrator matches 302 run scoreboard players set dumb_hole_cheat narrator 1
execute if score 17 narrator matches 302 run tellraw @a "§aYou may now switch gamemodes."
execute if score 17 narrator matches 302 run scoreboard players reset 17 narrator

execute if score id narrator matches 18 run scoreboard players set 18 narrator 1
execute if score 18 narrator matches 1.. run scoreboard players add 18 narrator 1
execute if score 18 narrator matches 2 as @a at @s run playsound narrator.all_prongs voice @s ~ ~ ~
execute if score 18 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"You tore down the walls. What did I expect? I mean, you did find all the prongs so... way to go!","color":"gray"}]
execute if score 18 narrator matches 160 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Anyway, I was told we're reaching the filesize limit for these transmissions so I hope they don't cu-","color":"gray"}]
execute if score 18 narrator matches 160 run scoreboard players reset 18 narrator

execute if score id narrator matches 19 run scoreboard players set 19 narrator 1
execute if score 19 narrator matches 1.. run scoreboard players add 19 narrator 1
execute if score 19 narrator matches 2 as @a at @s run playsound narrator.enter_3_2 voice @s ~ ~ ~
execute if score 19 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"That has to be the single least practical way to cross that gap. A flying trident?? Wasn't there already a portal to the other side?","color":"gray"}]
execute if score 19 narrator matches 2 run scoreboard players reset 19 narrator

execute if score id narrator matches 20 run scoreboard players set 20 narrator 1
execute if score 20 narrator matches 1.. run scoreboard players add 20 narrator 1
execute if score 20 narrator matches 2 as @a at @s run playsound narrator.enter_tree voice @s ~ ~ ~

execute if score 20 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Ah, the tree's actually bigger on the inside. We call it the '§oUnaffiliated with BBC§7'.","color":"gray"}]
execute if score 20 narrator matches 39 run function simondmc:lvl3/3-2/break_tree
execute if score 20 narrator matches 117 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"§oLegal was pretty strict on that one.","color":"gray"}]
execute if score 20 narrator matches 117 run scoreboard players reset 20 narrator

execute if score id narrator matches 21 run scoreboard players set 21 narrator 1
execute if score 21 narrator matches 1.. run scoreboard players add 21 narrator 1
execute if score 21 narrator matches 2 as @a at @s run playsound narrator.eyepiece_get voice @s ~ ~ ~
execute if score 21 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Umm, that's a developer only item… Mmm.. Do something else! §oGo... juggle!","color":"gray"}]
execute if score 21 narrator matches 144 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Look, if you are gonna use it, at least read the manual.","color":"gray"}]
execute if score 21 narrator matches 144 run scoreboard players reset 21 narrator

execute if score id narrator matches 23 run scoreboard players set 23 narrator 1
execute if score 23 narrator matches 1.. run scoreboard players add 23 narrator 1
execute if score 23 narrator matches 2 as @a at @s run playsound narrator.first_secret voice @s ~ ~ ~
execute if score 23 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Well well well, you found a secret! Here's the thing, this message is played on the first secret you find, whether that be in the first level, or the last.","color":"gray"}]
execute if score 23 narrator matches 146 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Therefore, my colleague will now deliver four pieces of dialogue. Kindly block your ears for the three that do not apply.","color":"gray"}]
execute if score 23 narrator matches 253 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Level one: Impressive! You found the secret on the very first level - you must have a good attention to detail and and astute awareness of your surroundings.","color":"gray"}]
execute if score 23 narrator matches 416 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Level two: Well you missed the first secret, but I mean you found one, I guess?","color":"gray"}]
execute if score 23 narrator matches 520 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Level three: Okay, it took you three levels to find a secret? And this was the easiest one. Gotta say, not impressed.","color":"gray"}]
execute if score 23 narrator matches 684 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"Level four: Okay, we spent countless hours carefully crafting secrets to improve your experience, and you don't have the patience or self-discipline to just… explore!","color":"gray"}]
execute if score 23 narrator matches 883 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"It's the final level! You should be ashamed.","color":"gray"}]
execute if score 23 narrator matches 883 run scoreboard players reset 23 narrator

execute if score id narrator matches 24 run scoreboard players set 24 narrator 1
execute if score 24 narrator matches 1.. run scoreboard players add 24 narrator 1
execute if score 24 narrator matches 2 as @a at @s run playsound narrator.short_hint voice @s ~ ~ ~
execute if score 24 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"You needed a hint after 7 minutes and 23 seconds.","color":"gray"}]
execute if score 24 narrator matches 89 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"I mean, I'm not judging you. But seven minutes? §oThat's going on the spreadsheet.","color":"gray"}]
execute if score 24 narrator matches 89 run scoreboard players reset 24 narrator

execute if score id narrator matches 25 run scoreboard players set 25 narrator 1
execute if score 25 narrator matches 1.. run scoreboard players add 25 narrator 1
execute if score 25 narrator matches 2 as @a at @s run playsound narrator.long_hint voice @s ~ ~ ~
execute if score 25 narrator matches 2 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"You needed a hint after 21 minutes and 47 seconds.","color":"gray"}]
execute if score 25 narrator matches 75 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"I mean, I'm not judging you. But twenty minutes? §oThat's going on the spreadsheet.","color":"gray"}]
execute if score 25 narrator matches 75 run scoreboard players reset 25 narrator

execute if score id narrator matches 26 run scoreboard players set 26 narrator 1
execute if score 26 narrator matches 1.. run scoreboard players add 26 narrator 1
execute if score 26 narrator matches 2 as @a at @s run playsound narrator.epilogue voice @s ~ ~ ~
execute if score 26 narrator matches 89 run tellraw @a [{"text":"[Narrator]: ","color":"yellow"},{"text":"I am currently saying this text.","color":"gray"}]
execute if score 26 narrator matches 89 run scoreboard players reset 26 narrator

scoreboard players reset id narrator