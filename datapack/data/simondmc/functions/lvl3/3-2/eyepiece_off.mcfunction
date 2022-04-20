# called by simondmc:lvl3/3-2/eyepiece, deactivates the eyepiece vision and stuff around it

effect clear @a slowness

# remove eyepiece glow blocks
kill @e[tag=eyepieceB]

# green
setblock 1056 99 1039 grass_block

setblock 1068 102 1032 oak_wood
setblock 1068 103 1031 oak_wood
setblock 1068 104 1031 spruce_slab
setblock 1068 104 1030 oak_wood[axis=z]
setblock 1067 105 1030 spruce_slab[type=top]
setblock 1067 106 1030 oak_wood
setblock 1067 107 1030 oak_wood
setblock 1067 108 1031 oak_wood[axis=x]
setblock 1068 109 1032 oak_wood[axis=x]
setblock 1068 109 1033 air
setblock 1069 109 1033 oak_wood[axis=z]
setblock 1070 102 1032 oak_wood
setblock 1079 107 1026 spruce_stairs[facing=south]
setblock 1079 108 1027 spruce_stairs[facing=south]
setblock 1079 108 1028 spruce_stairs[facing=east,half=top]
setblock 1080 107 1028 oak_planks
setblock 1079 107 1029 spruce_stairs[facing=south,half=top]
setblock 1079 106 1030 spruce_stairs[facing=south,half=top]
setblock 1079 105 1030 spruce_slab[type=top]
setblock 1080 104 1030 oak_fence
setblock 1080 103 1029 spruce_stairs[facing=east,half=top]
setblock 1080 103 1028 spruce_slab[type=top]

# red
setblock 1032 100 1031 grass_block

setblock 1026 107 1029 spruce_slab
setblock 1022 115 1031 spruce_stairs[facing=west]
setblock 1022 114 1031 spruce_stairs[facing=west,half=top]
setblock 1022 114 1030 oak_log
setblock 1021 115 1029 air
setblock 1021 112 1028 air
setblock 1020 114 1028 spruce_planks
setblock 1020 115 1028 spruce_stairs[facing=west,half=top]
setblock 1020 115 1026 spruce_trapdoor[facing=east]
setblock 1020 116 1027 spruce_fence
setblock 1021 116 1028 air
setblock 1021 117 1028 air
setblock 1020 119 1028 spruce_stairs[facing=west,half=top]
setblock 1020 120 1028 air
setblock 1018 121 1030 oak_wood
setblock 1018 122 1030 spruce_slab
setblock 1016 123 1031 spruce_stairs
setblock 1017 125 1029 spruce_trapdoor[facing=east,half=top,open=true]
setblock 1016 127 1028 spruce_planks
setblock 1016 126 1027 spruce_slab

# blue
setblock 1000 100 1012 grass_block

setblock 1010 112 1019 spruce_planks
setblock 1010 113 1020 spruce_slab
setblock 1011 114 1020 oak_planks
setblock 1012 115 1022 stripped_spruce_log
setblock 1012 115 1023 stripped_spruce_log
setblock 1012 112 1020 spruce_leaves[persistent=true]
setblock 1012 111 1021 spruce_leaves[persistent=true]
setblock 1012 111 1022 oak_log
setblock 1012 116 1021 spruce_planks
setblock 1012 117 1021 spruce_planks
setblock 1012 117 1022 spruce_planks
setblock 1012 118 1022 spruce_planks
setblock 1012 118 1023 spruce_slab
setblock 1012 116 1024 spruce_fence
setblock 1014 113 1024 spruce_planks
setblock 1014 117 1025 spruce_planks
setblock 1015 117 1027 spruce_planks
setblock 1015 116 1028 spruce_planks
setblock 1015 117 1028 air
setblock 1016 116 1028 oak_planks
setblock 1016 116 1027 oak_planks
setblock 1016 115 1027 spruce_slab[type=top]
setblock 1016 119 1028 oak_planks
setblock 1016 121 1028 spruce_planks
setblock 1016 121 1029 spruce_planks
setblock 1015 122 1029 air
setblock 1015 123 1028 spruce_stairs[facing=west]
setblock 1015 123 1027 spruce_slab[type=top]

scoreboard players reset on eyepiece