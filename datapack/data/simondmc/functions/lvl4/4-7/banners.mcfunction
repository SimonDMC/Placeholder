# ticking function, controls the banners on last floor

# purple banner
execute if block -1007 138 -998 white_wall_banner run setblock -1008 139 -998 purple_wall_banner[facing=east]{Patterns:[{Color:0,Pattern:"glb"}]} replace
execute if block -1007 138 -998 white_wall_banner run setblock -1007 138 -998 air
execute if block -1008 139 -998 white_banner run setblock -1008 139 -998 purple_wall_banner[facing=east]{Patterns:[{Color:0,Pattern:"glb"}]} replace

# blue banner
execute if block -1007 138 -999 white_wall_banner run setblock -1008 139 -999 blue_wall_banner[facing=east]{Patterns:[{Color:0,Pattern:"moj"}]} replace
execute if block -1007 138 -999 white_wall_banner run setblock -1007 138 -999 air
execute if block -1008 139 -999 white_banner run setblock -1008 139 -999 blue_wall_banner[facing=east]{Patterns:[{Color:0,Pattern:"moj"}]} replace

# red banner
execute if block -1007 138 -1000 white_wall_banner run setblock -1008 139 -1000 red_wall_banner[facing=east]{Patterns:[{Color:0,Pattern:"pig"}]} replace
execute if block -1007 138 -1000 white_wall_banner run setblock -1007 138 -1000 air
execute if block -1008 139 -1000 white_banner run setblock -1008 139 -1000 red_wall_banner[facing=east]{Patterns:[{Color:0,Pattern:"pig"}]} replace

# lime banner
execute if block -1008 140 -1000 white_wall_banner run setblock -1009 141 -1000 lime_wall_banner[facing=east]{Patterns:[{Color:0,Pattern:"glb"}]} replace
execute if block -1008 140 -1000 white_wall_banner run setblock -1008 140 -1000 air
execute if block -1009 141 -1000 white_banner run setblock -1009 141 -1000 lime_wall_banner[facing=east]{Patterns:[{Color:0,Pattern:"glb"}]} replace

# yellow banner
execute if block -1008 140 -999 white_wall_banner run setblock -1009 141 -999 yellow_wall_banner[facing=east]{Patterns:[{Color:0,Pattern:"sku"}]} replace
execute if block -1008 140 -999 white_wall_banner run setblock -1008 140 -999 air
execute if block -1009 141 -999 white_banner run setblock -1009 141 -999 yellow_wall_banner[facing=east]{Patterns:[{Color:0,Pattern:"sku"}]} replace

# orange banner
execute if block -1008 140 -998 white_wall_banner run setblock -1009 141 -998 orange_wall_banner[facing=east]{Patterns:[{Color:0,Pattern:"flo"}]} replace
execute if block -1008 140 -998 white_wall_banner run setblock -1008 140 -998 air
execute if block -1009 141 -998 white_banner run setblock -1009 141 -998 orange_wall_banner[facing=east]{Patterns:[{Color:0,Pattern:"flo"}]} replace