# called by simondmc:lvl3/3-2/eyepiece, activates the eyepiece vision and stuff around it

effect give @a[tag=started] slowness 1000000 10 true

# green
setblock 1056 99 1039 lime_glazed_terracotta
execute unless score @s tree matches -1 run summon armor_stand 1056 99 1039 {Team:"green",Glowing:1b,Marker:1b,Invisible:1b,Tags:["eyepieceB"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}

setblock 1068 102 1032 lime_concrete
setblock 1068 103 1031 lime_concrete
setblock 1068 104 1031 lime_concrete
setblock 1068 104 1030 lime_concrete
setblock 1067 105 1030 lime_concrete
setblock 1067 106 1030 lime_concrete
setblock 1067 107 1030 lime_concrete
setblock 1067 108 1031 lime_concrete
setblock 1068 109 1032 lime_concrete
setblock 1068 109 1033 lime_concrete
setblock 1069 109 1033 lime_concrete
setblock 1070 102 1032 lime_concrete
setblock 1079 107 1026 lime_concrete
setblock 1079 108 1027 lime_concrete
setblock 1079 108 1028 lime_concrete
setblock 1080 107 1028 lime_concrete
setblock 1079 107 1029 lime_concrete
setblock 1079 106 1030 lime_concrete
setblock 1079 105 1030 lime_concrete
setblock 1080 104 1030 lime_concrete
setblock 1080 103 1029 lime_concrete
setblock 1080 103 1028 lime_concrete

# red
setblock 1032 100 1031 red_glazed_terracotta
execute unless score @s tree matches -1 run summon armor_stand 1032 100 1031 {Team:"red",Glowing:1b,Marker:1b,Invisible:1b,Tags:["eyepieceB"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}

setblock 1026 107 1029 red_concrete
setblock 1022 115 1031 red_concrete
setblock 1022 114 1031 red_concrete
setblock 1022 114 1030 red_concrete
setblock 1021 115 1029 red_concrete
setblock 1021 112 1028 red_concrete
setblock 1020 114 1028 red_concrete
setblock 1020 115 1028 red_concrete
setblock 1020 115 1026 red_concrete
setblock 1020 116 1027 red_concrete
setblock 1021 116 1028 red_concrete
setblock 1021 117 1028 red_concrete
setblock 1020 119 1028 red_concrete
setblock 1020 120 1028 red_concrete
setblock 1018 121 1030 red_concrete
setblock 1018 122 1030 red_concrete
setblock 1016 123 1031 red_concrete
setblock 1017 125 1029 red_concrete
setblock 1016 127 1028 red_concrete
setblock 1016 126 1027 red_concrete

# blue
setblock 1000 100 1012 blue_glazed_terracotta
execute unless score @s tree matches -1 run summon armor_stand 1000 100 1012 {Team:"blue",Glowing:1b,Marker:1b,Invisible:1b,Tags:["eyepieceB"],ArmorItems:[{},{},{},{id:"cyan_stained_glass",Count:1b}]}

setblock 1010 112 1019 blue_concrete
setblock 1010 113 1020 blue_concrete
setblock 1011 114 1020 blue_concrete
setblock 1012 115 1022 blue_concrete
setblock 1012 115 1023 blue_concrete
setblock 1012 112 1020 blue_concrete
setblock 1012 111 1021 blue_concrete
setblock 1012 111 1022 blue_concrete
setblock 1012 116 1021 blue_concrete
setblock 1012 117 1021 blue_concrete
setblock 1012 117 1022 blue_concrete
setblock 1012 118 1022 blue_concrete
setblock 1012 118 1023 blue_concrete
setblock 1012 116 1024 blue_concrete
setblock 1014 113 1024 blue_concrete
setblock 1014 117 1025 blue_concrete
setblock 1015 117 1027 blue_concrete
setblock 1015 116 1028 blue_concrete
setblock 1015 117 1028 blue_concrete
setblock 1016 116 1028 blue_concrete
setblock 1016 116 1027 blue_concrete
setblock 1016 115 1027 blue_concrete
setblock 1016 119 1028 blue_concrete
setblock 1016 121 1028 blue_concrete
setblock 1016 121 1029 blue_concrete
setblock 1015 122 1029 blue_concrete
setblock 1015 123 1028 blue_concrete
setblock 1015 123 1027 blue_concrete

scoreboard players set on eyepiece 1

# lake
clone 1062 94 1022 1067 98 1033 1052 96 1026

# playsound
playsound item.spyglass.use master @s ~ ~ ~ 2