# tick function called by tick.json, calls all ticking functions

function dev:ticking

function simondmc:core/flowers
function simondmc:core/settings
function simondmc:core/text
function simondmc:core/fall
function simondmc:core/advancements
function simondmc:core/trigger
function simondmc:core/timer
function simondmc:core/narrator
function simondmc:core/hint/sys
function simondmc:core/hint/slot

function simondmc:start/intro
function simondmc:start/grass_spread
function simondmc:start/area

execute if entity @a[tag=lvl1] run function simondmc:lvl1/axe
execute if entity @a[tag=lvl1] run function simondmc:lvl1/crane
execute if entity @a[tag=lvl1] run function simondmc:lvl1/pickaxe
execute if entity @a[tag=lvl1] run function simondmc:lvl1/furnace

execute if entity @a[tag=lvl2] run function simondmc:lvl2/2-1/breaking
execute if entity @a[tag=lvl2] run function simondmc:lvl2/2-2/gray_concrete_powder
execute if entity @a[tag=lvl2] run function simondmc:lvl2/2-2/water
execute if entity @a[tag=lvl2] run function simondmc:lvl2/2-3/copper
execute if entity @a[tag=lvl2] run function simondmc:lvl2/2-3/pause
execute if entity @a[tag=lvl2] run function simondmc:lvl2/2-3/tnt
execute if entity @a[tag=lvl2] run function simondmc:lvl2/2-3/pearl
execute if entity @a[tag=lvl2] run function simondmc:lvl2/2-3/lever_door

execute if entity @a[tag=lvl3] run function simondmc:lvl3/3-1/exp
execute if entity @a[tag=lvl3] run function simondmc:lvl3/3-1/misc
execute if entity @a[tag=lvl3] run function simondmc:lvl3/3-1/smelting
execute if entity @a[tag=lvl3] run function simondmc:lvl3/3-1/trident
execute if entity @a[tag=lvl3] run function simondmc:lvl3/3-2/enchanting
execute if entity @a[tag=lvl3] run function simondmc:lvl3/3-2/tree
execute if entity @a[tag=lvl3] run function simondmc:lvl3/3-2/composter
execute if entity @a[tag=lvl3] run function simondmc:lvl3/3-2/magnet
execute if entity @a[tag=lvl3] run function simondmc:lvl3/3-2/eyepiece
execute if entity @a[tag=lvl3] run function simondmc:lvl3/3-2/vault

execute if entity @a[tag=lvl4] run function simondmc:lvl4/global/elevator
execute if entity @a[tag=lvl4] run function simondmc:lvl4/global/launcher
execute if entity @a[tag=lvl4] run function simondmc:lvl4/global/doors
execute if entity @a[tag=lvl4] run function simondmc:lvl4/4-1/sneak
execute if entity @a[tag=lvl4] run function simondmc:lvl4/4-1/dripleaf
execute if entity @a[tag=lvl4] run function simondmc:lvl4/4-2/shulker
execute if entity @a[tag=lvl4] run function simondmc:lvl4/4-2/crafting
execute if entity @a[tag=lvl4] run function simondmc:lvl4/4-2/boom
execute if entity @a[tag=lvl4] run function simondmc:lvl4/4-3/redstone
execute if entity @a[tag=lvl4] run function simondmc:lvl4/4-4/old_levels
execute if entity @a[tag=lvl4] run function simondmc:lvl4/4-4/rest
execute if entity @a[tag=lvl4] run function simondmc:lvl4/4-4/brewing
execute if entity @a[tag=lvl4] run function simondmc:lvl4/4-5/evoker
execute if entity @a[tag=lvl4] run function simondmc:lvl4/4-6/laser
execute if entity @a[tag=lvl4] run function simondmc:lvl4/4-7/cartography
execute if entity @a[tag=lvl4] run function simondmc:lvl4/4-7/banners
execute if entity @a[tag=lvl4] run function simondmc:lvl4/4-7/end

function simondmc:transitions/1_to_2
function simondmc:transitions/2_to_4
function simondmc:transitions/4_to_3

execute if score global end matches 1 run function simondmc:end/area